--[[
This module impements a validator for the AST
]]
local scope = require "lua-lsp.lua-parser.scope"

local lineno = scope.lineno
local new_scope, end_scope = scope.new_scope, scope.end_scope
local new_function, end_function = scope.new_function, scope.end_function
local begin_loop, end_loop = scope.begin_loop, scope.end_loop
local insideloop = scope.insideloop

-- creates an error message for the input string
local function syntaxerror (errorinfo, pos, msg)
  local l, c = lineno(errorinfo.subject, pos)
  --local error_msg = "%s:%d:%d: syntax error, %s"
  --return string.format(error_msg, errorinfo.filename, l, c, msg)
  return {
	  file = errorinfo.filename,
	  line = l,
	  column = c,
	  message = msg
  }
end

local function exist_label (env, scope, stm)
  local l = stm[1]
  for s=scope, 0, -1 do
    if env[s]["label"][l] then return true end
  end
  return false
end

local function set_label (env, label, pos)
  local scope = env.scope
  local l = env[scope]["label"][label]
  if not l then
    env[scope]["label"][label] = { name = label, pos = pos }
    return true
  else
    local msg = "label '%s' already defined at line %d"
    local line = lineno(env.errorinfo.subject, l.pos)
    msg = string.format(msg, label, line)
    return nil, syntaxerror(env.errorinfo, pos, msg)
  end
end

local function set_pending_goto (env, stm)
  local scope = env.scope
  table.insert(env[scope]["goto"], stm)
  return true
end

local function verify_pending_gotos (env)
  for s=env.maxscope, 0, -1 do
    for k, v in ipairs(env[s]["goto"]) do
      if not exist_label(env, s, v) then
        local msg = "no visible label '%s' for <goto>"
        msg = string.format(msg, v[1])
        return nil, syntaxerror(env.errorinfo, v.pos, msg)
      end
    end
  end
  return true
end

local function set_vararg (env, is_vararg)
  env["function"][env.fscope].is_vararg = is_vararg
end

local traverse_stm, traverse_exp, traverse_var
local traverse_block, traverse_explist, traverse_varlist, traverse_parlist

function traverse_parlist (env, parlist)
  local len = #parlist
  local is_vararg = false
  if len > 0 and parlist[len].tag == "Dots" then
    is_vararg = true
  end
  set_vararg(env, is_vararg)
  return true
end

local function traverse_function (env, exp)
  new_function(env)
  new_scope(env)
  local status, msg = traverse_parlist(env, exp[1])
  if not status then return status, msg end
  status, msg = traverse_block(env, exp[2])
  if not status then return status, msg end
  end_scope(env)
  end_function(env)
  return true
end

local function traverse_op (env, exp)
  local status, msg = traverse_exp(env, exp[2])
  if not status then return status, msg end
  if exp[3] then
    status, msg = traverse_exp(env, exp[3])
    if not status then return status, msg end
  end
  return true
end

local function traverse_paren (env, exp)
  local status, msg = traverse_exp(env, exp[1])
  if not status then return status, msg end
  return true
end

local function traverse_table (env, fieldlist)
  for k, v in ipairs(fieldlist) do
    local tag = v.tag
    if tag == "Pair" then
      local status, msg = traverse_exp(env, v[1])
      if not status then return status, msg end
      status, msg = traverse_exp(env, v[2])
      if not status then return status, msg end
    else
      local status, msg = traverse_exp(env, v)
      if not status then return status, msg end
    end
  end
  return true
end

local function traverse_vararg (env, exp)
  if not env["function"][env.fscope].is_vararg then
    local msg = "cannot use '...' outside a vararg function"
    return nil, syntaxerror(env.errorinfo, exp.pos, msg)
  end
  return true
end

local function traverse_call (env, call)
  local status, msg = traverse_exp(env, call[1])
  if not status then return status, msg end
  for i=2, #call do
    status, msg = traverse_exp(env, call[i])
    if not status then return status, msg end
  end
  return true
end

local function traverse_invoke (env, invoke)
  local status, msg = traverse_exp(env, invoke[1])
  if not status then return status, msg end
  for i=3, #invoke do
    status, msg = traverse_exp(env, invoke[i])
    if not status then return status, msg end
  end
  return true
end

local function traverse_assignment (env, stm)
  local status, msg = traverse_varlist(env, stm[1])
  if not status then return status, msg end
  status, msg = traverse_explist(env, stm[2])
  if not status then return status, msg end
  return true
end

local function traverse_break (env, stm)
  if not insideloop(env) then
    local msg = "<break> not inside a loop"
    return nil, syntaxerror(env.errorinfo, stm.pos, msg)
  end
  return true
end

local function traverse_forin (env, stm)
  begin_loop(env)
  new_scope(env)
  local status, msg = traverse_explist(env, stm[2])
  if not status then return status, msg end
  status, msg = traverse_block(env, stm[3])
  if not status then return status, msg end
  end_scope(env)
  end_loop(env)
  return true
end

local function traverse_fornum (env, stm)
  local status, msg
  begin_loop(env)
  new_scope(env)
  status, msg = traverse_exp(env, stm[2])
  if not status then return status, msg end
  status, msg = traverse_exp(env, stm[3])
  if not status then return status, msg end
  if stm[5] then
    status, msg = traverse_exp(env, stm[4])
    if not status then return status, msg end
    status, msg = traverse_block(env, stm[5])
    if not status then return status, msg end
  else
    status, msg = traverse_block(env, stm[4])
    if not status then return status, msg end
  end
  end_scope(env)
  end_loop(env)
  return true
end

local function traverse_goto (env, stm)
  local status, msg = set_pending_goto(env, stm)
  if not status then return status, msg end
  return true
end

local function traverse_if (env, stm)
  local len = #stm
  if len % 2 == 0 then
    for i=1, len, 2 do
      local status, msg = traverse_exp(env, stm[i])
      if not status then return status, msg end
      status, msg = traverse_block(env, stm[i+1])
      if not status then return status, msg end
    end
  else
    for i=1, len-1, 2 do
      local status, msg = traverse_exp(env, stm[i])
      if not status then return status, msg end
      status, msg = traverse_block(env, stm[i+1])
      if not status then return status, msg end
    end
    local status, msg = traverse_block(env, stm[len])
    if not status then return status, msg end
  end
  return true
end

local function traverse_label (env, stm)
  local status, msg = set_label(env, stm[1], stm.pos)
  if not status then return status, msg end
  return true
end

local function traverse_let (env, stm)
  local status, msg = traverse_explist(env, stm[2])
  if not status then return status, msg end
  return true
end

local function traverse_letrec (env, stm)
  local status, msg = traverse_exp(env, stm[2][1])
  if not status then return status, msg end
  return true
end

local function traverse_repeat (env, stm)
  begin_loop(env)
  local status, msg = traverse_block(env, stm[1])
  if not status then return status, msg end
  status, msg = traverse_exp(env, stm[2])
  if not status then return status, msg end
  end_loop(env)
  return true
end

local function traverse_return (env, stm)
  local status, msg = traverse_explist(env, stm)
  if not status then return status, msg end
  return true
end

local function traverse_while (env, stm)
  begin_loop(env)
  local status, msg = traverse_exp(env, stm[1])
  if not status then return status, msg end
  status, msg = traverse_block(env, stm[2])
  if not status then return status, msg end
  end_loop(env)
  return true
end

function traverse_var (env, var)
  local tag = var.tag
  if tag == "Id" then -- `Id{ <string> }
    return true
  elseif tag == "Index" then -- `Index{ expr expr }
    local status, msg = traverse_exp(env, var[1])
    if not status then return status, msg end
    status, msg = traverse_exp(env, var[2])
    if not status then return status, msg end
    return true
  else
    error("expecting a variable, but got a " .. tag)
  end
end

function traverse_varlist (env, varlist)
  for k, v in ipairs(varlist) do
    local status, msg = traverse_var(env, v)
    if not status then return status, msg end
  end
  return true
end

function traverse_exp (env, exp)
  local tag = exp.tag
  if tag == "Nil" or
     tag == "True" or
     tag == "False" or
     tag == "Number" or -- `Number{ <number> }
     tag == "String" then -- `String{ <string> }
    return true
  elseif tag == "Dots" then
    return traverse_vararg(env, exp)
  elseif tag == "Function" then -- `Function{ { `Id{ <string> }* `Dots? } block }
    return traverse_function(env, exp)
  elseif tag == "Table" then -- `Table{ ( `Pair{ expr expr } | expr )* }
    return traverse_table(env, exp)
  elseif tag == "Op" then -- `Op{ opid expr expr? }
    return traverse_op(env, exp)
  elseif tag == "Paren" then -- `Paren{ expr }
    return traverse_paren(env, exp)
  elseif tag == "Call" then -- `Call{ expr expr* }
    return traverse_call(env, exp)
  elseif tag == "Invoke" then -- `Invoke{ expr `String{ <string> expr* }
    return traverse_invoke(env, exp)
  elseif tag == "Id" or -- `Id{ <string> }
         tag == "Index" then -- `Index{ expr expr }
    return traverse_var(env, exp)
  else
    error("expecting an expression, but got a " .. tag)
  end
end

function traverse_explist (env, explist)
  for k, v in ipairs(explist) do
    local status, msg = traverse_exp(env, v)
    if not status then return status, msg end
  end
  return true
end

function traverse_stm (env, stm)
  local tag = stm.tag
  if tag == "Do" then -- `Do{ stat* }
    return traverse_block(env, stm)
  elseif tag == "Set" then -- `Set{ {lhs+} {expr+} }
    return traverse_assignment(env, stm)
  elseif tag == "While" then -- `While{ expr block }
    return traverse_while(env, stm)
  elseif tag == "Repeat" then -- `Repeat{ block expr }
    return traverse_repeat(env, stm)
  elseif tag == "If" then -- `If{ (expr block)+ block? }
    return traverse_if(env, stm)
  elseif tag == "Fornum" then -- `Fornum{ ident expr expr expr? block }
    return traverse_fornum(env, stm)
  elseif tag == "Forin" then -- `Forin{ {ident+} {expr+} block }
    return traverse_forin(env, stm)
  elseif tag == "Local" then -- `Local{ {ident+} {expr+}? }
    return traverse_let(env, stm)
  elseif tag == "Localrec" then -- `Localrec{ ident expr }
    return traverse_letrec(env, stm)
  elseif tag == "Goto" then -- `Goto{ <string> }
    return traverse_goto(env, stm)
  elseif tag == "Label" then -- `Label{ <string> }
    return traverse_label(env, stm)
  elseif tag == "Return" then -- `Return{ <expr>* }
    return traverse_return(env, stm)
  elseif tag == "Break" then
    return traverse_break(env, stm)
  elseif tag == "Call" then -- `Call{ expr expr* }
    return traverse_call(env, stm)
  elseif tag == "Invoke" then -- `Invoke{ expr `String{ <string> } expr* }
    return traverse_invoke(env, stm)
  else
    error("expecting a statement, but got a " .. tag)
  end
end

function traverse_block (env, block)
  local l = {}
  new_scope(env)
  for k, v in ipairs(block) do
    local status, msg = traverse_stm(env, v)
    if not status then return status, msg end
  end
  end_scope(env)
  return true
end


local function traverse (ast, errorinfo)
  assert(type(ast) == "table")
  assert(type(errorinfo) == "table")
  local env = { errorinfo = errorinfo, ["function"] = {} }
  new_function(env)
  set_vararg(env, true)
  local status, msg = traverse_block(env, ast)
  if not status then return status, msg end
  end_function(env)
  status, msg = verify_pending_gotos(env)
  if not status then return status, msg end
  return ast
end

return { validate = traverse, syntaxerror = syntaxerror }
