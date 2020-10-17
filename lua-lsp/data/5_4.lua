return {
  global = {
    fields = {
      _VERSION = {
        description = "A global variable (not a function) that holds a string containing the running Lua version. The current value of this variable is \"Lua 5.4\".",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-_VERSION",
        type = "string"
      },
      assert = {
        args = {
          {
            name = "v"
          }
        },
        argsDisplay = "v [, message]",
        description = "Raises an error if the value of its argument v is false (i.e., nil or false); otherwise, returns all its arguments. In case of error, message is the error object; when absent, it defaults to \"assertion failed!\"",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-assert",
        type = "function"
      },
      collectgarbage = {
        args = {},
        argsDisplay = "[opt [, arg]]",
        description = "This function is a generic interface to the garbage collector. It performs different functions according to its first argument, opt:",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-collectgarbage",
        type = "function"
      },
      coroutine = {
        description = "This library comprises the operations to manipulate coroutines, which come inside the table coroutine. See §2.6 for a general description of coroutines.",
        fields = {
          close = {
            args = {
              {
                name = "co"
              }
            },
            argsDisplay = "co",
            description = "Closes coroutine co, that is, closes all its pending to-be-closed variables and puts the coroutine in a dead state. The given coroutine must be dead or suspended. In case of error closing some variable, returns false plus the error object; otherwise returns true.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.close",
            type = "function"
          },
          create = {
            args = {
              {
                name = "f"
              }
            },
            argsDisplay = "f",
            description = "Creates a new coroutine, with body f. f must be a function. Returns this new coroutine, an object with type \"thread\".",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.create",
            type = "function"
          },
          isyieldable = {
            args = {},
            argsDisplay = "[co]",
            description = "Returns true when the coroutine co can yield. The default for co is the running coroutine.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.isyieldable",
            type = "function"
          },
          resume = {
            args = {
              {
                name = "co"
              }
            },
            argsDisplay = "co [, val1, ···]",
            description = "Starts or continues the execution of coroutine co. The first time you resume a coroutine, it starts running its body. The values val1, ... are passed as the arguments to the body function. If the coroutine has yielded, resume restarts it; the values val1, ... are passed as the results from the yield.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.resume",
            type = "function"
          },
          running = {
            args = {},
            argsDisplay = "",
            description = "Returns the running coroutine plus a boolean, true when the running coroutine is the main one.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.running",
            type = "function"
          },
          status = {
            args = {
              {
                name = "co"
              }
            },
            argsDisplay = "co",
            description = "Returns the status of the coroutine co, as a string: \"running\", if the coroutine is running (that is, it is the one that called status); \"suspended\", if the coroutine is suspended in a call to yield, or if it has not started running yet; \"normal\" if the coroutine is active but not running (that is, it has resumed another coroutine); and \"dead\" if the coroutine has finished its body function, or if it has stopped with an error.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.status",
            type = "function"
          },
          wrap = {
            args = {
              {
                name = "f"
              }
            },
            argsDisplay = "f",
            description = "Creates a new coroutine, with body f; f must be a function. Returns a function that resumes the coroutine each time it is called. Any arguments passed to this function behave as the extra arguments to resume. The function returns the same values returned by resume, except the first boolean. In case of error, the function closes the coroutine and propagates the error.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.wrap",
            type = "function"
          },
          yield = {
            args = {},
            argsDisplay = "···",
            description = "Suspends the execution of the calling coroutine. Any arguments to yield are passed as extra results to resume.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-coroutine.yield",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.2",
        type = "table"
      },
      debug = {
        description = "This library provides the functionality of the debug interface (§4.7) to Lua programs. You should exert care when using this library. Several of its functions violate basic assumptions about Lua code (e.g., that variables local to a function cannot be accessed from outside; that userdata metatables cannot be changed by Lua code; that Lua programs do not crash) and therefore can compromise otherwise secure code. Moreover, some functions in this library may be slow.",
        fields = {
          debug = {
            args = {},
            argsDisplay = "",
            description = "Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.debug",
            type = "function"
          },
          gethook = {
            args = {},
            argsDisplay = "[thread]",
            description = "Returns the current hook settings of the thread, as three values: the current hook function, the current hook mask, and the current hook count, as set by the debug.sethook function.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.gethook",
            type = "function"
          },
          getinfo = {
            args = {},
            argsDisplay = "[thread,] f [, what]",
            description = "Returns a table with information about a function. You can give the function directly or you can give a number as the value of f, which means the function running at level f of the call stack of the given thread: level 0 is the current function (getinfo itself); level 1 is the function that called getinfo (except for tail calls, which do not count in the stack); and so on. If f is a number greater than the number of active functions, then getinfo returns fail.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.getinfo",
            type = "function"
          },
          getlocal = {
            args = {},
            argsDisplay = "[thread,] f, local",
            description = "This function returns the name and the value of the local variable with index local of the function at level f of the stack. This function accesses not only explicit local variables, but also parameters and temporary values.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.getlocal",
            type = "function"
          },
          getmetatable = {
            args = {
              {
                name = "value"
              }
            },
            argsDisplay = "value",
            description = "Returns the metatable of the given value or nil if it does not have a metatable.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.getmetatable",
            type = "function"
          },
          getregistry = {
            args = {},
            argsDisplay = "",
            description = "Returns the registry table (see §4.3).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.getregistry",
            type = "function"
          },
          getupvalue = {
            args = {
              {
                name = "f"
              },
              {
                name = "up"
              }
            },
            argsDisplay = "f, up",
            description = "This function returns the name and the value of the upvalue with index up of the function f. The function returns fail if there is no upvalue with the given index.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.getupvalue",
            type = "function"
          },
          getuservalue = {
            args = {
              {
                name = "u"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "u, n",
            description = "Returns the n-th user value associated to the userdata u plus a boolean, false if the userdata does not have that value.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.getuservalue",
            type = "function"
          },
          setcstacklimit = {
            args = {
              {
                name = "limit"
              }
            },
            argsDisplay = "limit",
            description = "Sets a new limit for the C stack. This limit controls how deeply nested calls can go in Lua, with the intent of avoiding a stack overflow. A limit too small restricts recursive calls pointlessly; a limit too large exposes the interpreter to stack-overflow crashes. Unfortunately, there is no way to know a priori the maximum safe limit for a platform.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.setcstacklimit",
            type = "function"
          },
          sethook = {
            args = {},
            argsDisplay = "[thread,] hook, mask [, count]",
            description = "Sets the given function as the debug hook. The string mask and the number count describe when the hook will be called. The string mask may have any combination of the following characters, with the given meaning:",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.sethook",
            type = "function"
          },
          setlocal = {
            args = {},
            argsDisplay = "[thread,] level, local, value",
            description = "This function assigns the value value to the local variable with index local of the function at level level of the stack. The function returns fail if there is no local variable with the given index, and raises an error when called with a level out of range. (You can call getinfo to check whether the level is valid.) Otherwise, it returns the name of the local variable.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.setlocal",
            type = "function"
          },
          setmetatable = {
            args = {
              {
                name = "value"
              },
              {
                name = "table"
              }
            },
            argsDisplay = "value, table",
            description = "Sets the metatable for the given value to the given table (which can be nil). Returns value.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.setmetatable",
            type = "function"
          },
          setupvalue = {
            args = {
              {
                name = "f"
              },
              {
                name = "up"
              },
              {
                name = "value"
              }
            },
            argsDisplay = "f, up, value",
            description = "This function assigns the value value to the upvalue with index up of the function f. The function returns fail if there is no upvalue with the given index. Otherwise, it returns the name of the upvalue.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.setupvalue",
            type = "function"
          },
          setuservalue = {
            args = {
              {
                name = "udata"
              },
              {
                name = "value"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "udata, value, n",
            description = "Sets the given value as the n-th user value associated to the given udata. udata must be a full userdata.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.setuservalue",
            type = "function"
          },
          traceback = {
            args = {},
            argsDisplay = "[thread,] [message [, level]]",
            description = "If message is present but is neither a string nor nil, this function returns message without further processing. Otherwise, it returns a string with a traceback of the call stack. The optional message string is appended at the beginning of the traceback. An optional level number tells at which level to start the traceback (default is 1, the function calling traceback).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.traceback",
            type = "function"
          },
          upvalueid = {
            args = {
              {
                name = "f"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "f, n",
            description = "Returns a unique identifier (as a light userdata) for the upvalue numbered n from the given function.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.upvalueid",
            type = "function"
          },
          upvaluejoin = {
            args = {
              {
                name = "f1"
              },
              {
                name = "n1"
              },
              {
                name = "f2"
              },
              {
                name = "n2"
              }
            },
            argsDisplay = "f1, n1, f2, n2",
            description = "Make the n1-th upvalue of the Lua closure f1 refer to the n2-th upvalue of the Lua closure f2.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-debug.upvaluejoin",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.10",
        type = "table"
      },
      dofile = {
        args = {},
        argsDisplay = "[filename]",
        description = "Opens the named file and executes its content as a Lua chunk. When called without arguments, dofile executes the content of the standard input (stdin). Returns all values returned by the chunk. In case of errors, dofile propagates the error to its caller. (That is, dofile does not run in protected mode.)",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-dofile",
        type = "function"
      },
      error = {
        args = {
          {
            name = "message"
          }
        },
        argsDisplay = "message [, level]",
        description = "Raises an error (see §2.3) with @{message} as the error object. This function never returns.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-error",
        type = "function"
      },
      getmetatable = {
        args = {
          {
            name = "object"
          }
        },
        argsDisplay = "object",
        description = "If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a __metatable field, returns the associated value. Otherwise, returns the metatable of the given object.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-getmetatable",
        type = "function"
      },
      io = {
        description = "The I/O library provides two different styles for file manipulation. The first one uses implicit file handles; that is, there are operations to set a default input file and a default output file, and all input/output operations are done over these default files. The second style uses explicit file handles.",
        fields = {
          close = {
            args = {},
            argsDisplay = "[file]",
            description = "Equivalent to file:close(). Without a file, closes the default output file.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.close",
            type = "function"
          },
          flush = {
            args = {},
            argsDisplay = "",
            description = "Equivalent to io.output():flush().",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.flush",
            type = "function"
          },
          input = {
            args = {},
            argsDisplay = "[file]",
            description = "When called with a file name, it opens the named file (in text mode), and sets its handle as the default input file. When called with a file handle, it simply sets this file handle as the default input file. When called without arguments, it returns the current default input file.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.input",
            type = "function"
          },
          lines = {
            args = {},
            argsDisplay = "[filename, ···]",
            description = "Opens the given file name in read mode and returns an iterator function that works like file:lines(···) over the opened file. When the iterator function fails to read any value, it automatically closes the file. Besides the iterator function, io.lines returns three other values: two nil values as placeholders, plus the created file handle. Therefore, when used in a generic for loop, the file is closed also if the loop is interrupted by an error or a break.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.lines",
            type = "function"
          },
          open = {
            args = {
              {
                name = "filename"
              }
            },
            argsDisplay = "filename [, mode]",
            description = "This function opens a file, in the mode specified in the string mode. In case of success, it returns a new file handle.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.open",
            returnTypes = {
              {
                name = "file",
                type = "ref"
              }
            },
            type = "function"
          },
          output = {
            args = {},
            argsDisplay = "[file]",
            description = "Similar to io.input, but operates over the default output file.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.output",
            type = "function"
          },
          popen = {
            args = {
              {
                name = "prog"
              }
            },
            argsDisplay = "prog [, mode]",
            description = "This function is system dependent and is not available on all platforms.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.popen",
            returnTypes = {
              {
                name = "file",
                type = "ref"
              }
            },
            type = "function"
          },
          read = {
            args = {},
            argsDisplay = "···",
            description = "Equivalent to io.input():read(···).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.read",
            type = "function"
          },
          stderr = {
            name = "file",
            type = "ref"
          },
          stdin = {
            name = "file",
            type = "ref"
          },
          stdout = {
            name = "file",
            type = "ref"
          },
          tmpfile = {
            args = {},
            argsDisplay = "",
            description = "In case of success, returns a handle for a temporary file. This file is opened in update mode and it is automatically removed when the program ends.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.tmpfile",
            returnTypes = {
              {
                name = "file",
                type = "ref"
              }
            },
            type = "function"
          },
          type = {
            args = {
              {
                name = "obj"
              }
            },
            argsDisplay = "obj",
            description = "Checks whether obj is a valid file handle. Returns the string \"file\" if obj is an open file handle, \"closed file\" if obj is a closed file handle, or fail if obj is not a file handle.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.type",
            type = "function"
          },
          write = {
            args = {},
            argsDisplay = "···",
            description = "Equivalent to io.output():write(···).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-io.write",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.8",
        type = "table"
      },
      ipairs = {
        args = {
          {
            name = "t"
          }
        },
        argsDisplay = "t",
        description = "Returns three values (an iterator function, the table t, and 0) so that the construction",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-ipairs",
        type = "function"
      },
      load = {
        args = {
          {
            name = "chunk"
          }
        },
        argsDisplay = "chunk [, chunkname [, mode [, env]]]",
        description = "Loads a chunk.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-load",
        type = "function"
      },
      loadfile = {
        args = {},
        argsDisplay = "[filename [, mode [, env]]]",
        description = "Similar to load, but gets the chunk from file filename or from the standard input, if no file name is given.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-loadfile",
        type = "function"
      },
      math = {
        description = "This library provides basic mathematical functions. It provides all its functions and constants inside the table math. Functions with the annotation \"integer/float\" give integer results for integer arguments and float results for non-integer arguments. The rounding functions math.ceil, math.floor, and math.modf return an integer when the result fits in the range of an integer, or a float otherwise.",
        fields = {
          abs = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the maximum value between x and -x. (integer/float)",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.abs",
            type = "function"
          },
          acos = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the arc cosine of x (in radians).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.acos",
            type = "function"
          },
          asin = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the arc sine of x (in radians).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.asin",
            type = "function"
          },
          atan = {
            args = {
              {
                name = "y"
              }
            },
            argsDisplay = "y [, x]",
            description = "Returns the arc tangent of y/x (in radians), but uses the signs of both arguments to find the quadrant of the result. It also handles correctly the case of x being zero.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.atan",
            type = "function"
          },
          ceil = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the smallest integral value greater than or equal to x.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.ceil",
            type = "function"
          },
          cos = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the cosine of x (assumed to be in radians).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.cos",
            type = "function"
          },
          deg = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Converts the angle x from radians to degrees.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.deg",
            type = "function"
          },
          exp = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the value ex (where e is the base of natural logarithms).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.exp",
            type = "function"
          },
          floor = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the largest integral value less than or equal to x.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.floor",
            type = "function"
          },
          fmod = {
            args = {
              {
                name = "x"
              },
              {
                name = "y"
              }
            },
            argsDisplay = "x, y",
            description = "Returns the remainder of the division of x by y that rounds the quotient towards zero. (integer/float)",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.fmod",
            type = "function"
          },
          huge = {
            description = "The float value HUGE_VAL, a value greater than any other numeric value.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.huge",
            type = "unknown"
          },
          log = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x [, base]",
            description = "Returns the logarithm of x in the given base. The default for base is e (so that the function returns the natural logarithm of x).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.log",
            type = "function"
          },
          max = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x, ···",
            description = "Returns the argument with the maximum value, according to the Lua operator <.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.max",
            type = "function"
          },
          maxinteger = {
            description = "An integer with the maximum value for an integer.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.maxinteger",
            type = "unknown"
          },
          min = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x, ···",
            description = "Returns the argument with the minimum value, according to the Lua operator <.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.min",
            type = "function"
          },
          mininteger = {
            description = "An integer with the minimum value for an integer.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.mininteger",
            type = "unknown"
          },
          modf = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the integral part of x and the fractional part of x. Its second result is always a float.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.modf",
            type = "function"
          },
          pi = {
            description = "The value of π.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.pi",
            type = "number"
          },
          rad = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Converts the angle x from degrees to radians.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.rad",
            type = "function"
          },
          random = {
            args = {},
            argsDisplay = "[m [, n]]",
            description = "When called without arguments, returns a pseudo-random float with uniform distribution in the range [0,1). When called with two integers m and n, math.random returns a pseudo-random integer with uniform distribution in the range [m, n]. The call math.random(n), for a positive n, is equivalent to math.random(1,n). The call math.random(0) produces an integer with all bits (pseudo)random.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.random",
            type = "function"
          },
          randomseed = {
            args = {},
            argsDisplay = "[x [, y]]",
            description = "When called with at least one argument, the integer parameters x and y are joined into a 128-bit seed that is used to reinitialize the pseudo-random generator; equal seeds produce equal sequences of numbers. The default for y is zero.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.randomseed",
            type = "function"
          },
          sin = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the sine of x (assumed to be in radians).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.sin",
            type = "function"
          },
          sqrt = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the square root of x. (You can also use the expression x^0.5 to compute this value.)",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.sqrt",
            type = "function"
          },
          tan = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the tangent of x (assumed to be in radians).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.tan",
            type = "function"
          },
          tointeger = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "If the value x is convertible to an integer, returns that integer. Otherwise, returns fail.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.tointeger",
            type = "function"
          },
          type = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns \"integer\" if x is an integer, \"float\" if it is a float, or fail if x is not a number.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.type",
            type = "function"
          },
          ult = {
            args = {
              {
                name = "m"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "m, n",
            description = "Returns a boolean, true if and only if integer m is below integer n when they are compared as unsigned integers.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-math.ult",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.7",
        type = "table"
      },
      next = {
        args = {
          {
            name = "table"
          }
        },
        argsDisplay = "table [, index]",
        description = "Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. A call to next returns the next index of the table and its associated value. When called with nil as its second argument, next returns an initial index and its associated value. When called with the last index, or with nil in an empty table, next returns nil. If the second argument is absent, then it is interpreted as nil. In particular, you can use next(t) to check whether a table is empty.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-next",
        type = "function"
      },
      os = {
        description = "This library is implemented through table os.",
        fields = {
          clock = {
            args = {},
            argsDisplay = "",
            description = "Returns an approximation of the amount in seconds of CPU time used by the program, as returned by the underlying ISO C function clock.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.clock",
            type = "function"
          },
          date = {
            args = {},
            argsDisplay = "[format [, time]]",
            description = "Returns a string or a table containing date and time, formatted according to the given string format.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.date",
            type = "function"
          },
          difftime = {
            args = {
              {
                name = "t2"
              },
              {
                name = "t1"
              }
            },
            argsDisplay = "t2, t1",
            description = "Returns the difference, in seconds, from time t1 to time t2 (where the times are values returned by os.time). In POSIX, Windows, and some other systems, this value is exactly t2-t1.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.difftime",
            type = "function"
          },
          execute = {
            args = {},
            argsDisplay = "[command]",
            description = "This function is equivalent to the ISO C function system. It passes command to be executed by an operating system shell. Its first result is true if the command terminated successfully, or fail otherwise. After this first result the function returns a string plus a number, as follows:",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.execute",
            type = "function"
          },
          exit = {
            args = {},
            argsDisplay = "[code [, close]]",
            description = "Calls the ISO C function exit to terminate the host program. If code is true, the returned status is EXIT_SUCCESS; if code is false, the returned status is EXIT_FAILURE; if code is a number, the returned status is this number. The default value for code is true.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.exit",
            type = "function"
          },
          getenv = {
            args = {
              {
                name = "varname"
              }
            },
            argsDisplay = "varname",
            description = "Returns the value of the process environment variable varname or fail if the variable is not defined.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.getenv",
            type = "function"
          },
          remove = {
            args = {
              {
                name = "filename"
              }
            },
            argsDisplay = "filename",
            description = "Deletes the file (or empty directory, on POSIX systems) with the given name. If this function fails, it returns fail plus a string describing the error and the error code. Otherwise, it returns true.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.remove",
            type = "function"
          },
          rename = {
            args = {
              {
                name = "oldname"
              },
              {
                name = "newname"
              }
            },
            argsDisplay = "oldname, newname",
            description = "Renames the file or directory named oldname to newname. If this function fails, it returns fail, plus a string describing the error and the error code. Otherwise, it returns true.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.rename",
            type = "function"
          },
          setlocale = {
            args = {
              {
                name = "locale"
              }
            },
            argsDisplay = "locale [, category]",
            description = "Sets the current locale of the program. locale is a system-dependent string specifying a locale; category is an optional string describing which category to change: \"all\", \"collate\", \"ctype\", \"monetary\", \"numeric\", or \"time\"; the default category is \"all\". The function returns the name of the new locale, or fail if the request cannot be honored.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.setlocale",
            type = "function"
          },
          time = {
            args = {},
            argsDisplay = "[table]",
            description = "Returns the current time when called without arguments, or a time representing the local date and time specified by the given table. This table must have fields year, month, and day, and may have fields hour (default is 12), min (default is 0), sec (default is 0), and isdst (default is nil). Other fields are ignored. For a description of these fields, see the os.date function.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.time",
            type = "function"
          },
          tmpname = {
            args = {},
            argsDisplay = "",
            description = "Returns a string with a file name that can be used for a temporary file. The file must be explicitly opened before its use and explicitly removed when no longer needed.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-os.tmpname",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.9",
        type = "table"
      },
      package = {
        description = "The package library provides basic facilities for loading modules in Lua. It exports one function directly in the global environment: require. Everything else is exported in the table package.",
        fields = {
          config = {
            description = "A string describing some compile-time configurations for packages. This string is a sequence of lines:",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.config",
            type = "unknown"
          },
          cpath = {
            description = "A string with the path used by require to search for a C loader.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.cpath",
            type = "unknown"
          },
          loaded = {
            description = "A table used by require to control which modules are already loaded. When you require a module modname and package.loaded[modname] is not false, require simply returns the value stored there.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.loaded",
            type = "unknown"
          },
          loadlib = {
            args = {
              {
                name = "libname"
              },
              {
                name = "funcname"
              }
            },
            argsDisplay = "libname, funcname",
            description = "Dynamically links the host program with the C library libname.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.loadlib",
            type = "function"
          },
          path = {
            description = "A string with the path used by require to search for a Lua loader.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.path",
            type = "unknown"
          },
          preload = {
            description = "A table to store loaders for specific modules (see require).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.preload",
            type = "unknown"
          },
          searchers = {
            description = "A table used by require to control how to find modules.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.searchers",
            type = "unknown"
          },
          searchpath = {
            args = {
              {
                name = "name"
              },
              {
                name = "path"
              }
            },
            argsDisplay = "name, path [, sep [, rep]]",
            description = "Searches for the given name in the given path.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-package.searchpath",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.3",
        type = "table"
      },
      pairs = {
        args = {
          {
            name = "t"
          }
        },
        argsDisplay = "t",
        description = "If t has a metamethod __pairs, calls it with t as argument and returns the first three results from the call.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-pairs",
        type = "function"
      },
      pcall = {
        args = {
          {
            name = "f"
          }
        },
        argsDisplay = "f [, arg1, ···]",
        description = "Calls the function f with the given arguments in protected mode. This means that any error inside f is not propagated; instead, pcall catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, pcall also returns all results from the call, after this first result. In case of any error, pcall returns false plus the error object. Note that errors caught by pcall do not call a message handler.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-pcall",
        type = "function"
      },
      print = {
        args = {},
        argsDisplay = "···",
        description = "Receives any number of arguments and prints their values to stdout, converting each argument to a string following the same rules of tostring.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-print",
        type = "function"
      },
      rawequal = {
        args = {
          {
            name = "v1"
          },
          {
            name = "v2"
          }
        },
        argsDisplay = "v1, v2",
        description = "Checks whether v1 is equal to v2, without invoking the __eq metamethod. Returns a boolean.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-rawequal",
        type = "function"
      },
      rawget = {
        args = {
          {
            name = "table"
          },
          {
            name = "index"
          }
        },
        argsDisplay = "table, index",
        description = "Gets the real value of table[index], without using the __index metavalue. table must be a table; index may be any value.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-rawget",
        type = "function"
      },
      rawlen = {
        args = {
          {
            name = "v"
          }
        },
        argsDisplay = "v",
        description = "Returns the length of the object v, which must be a table or a string, without invoking the __len metamethod. Returns an integer.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-rawlen",
        type = "function"
      },
      rawset = {
        args = {
          {
            name = "table"
          },
          {
            name = "index"
          },
          {
            name = "value"
          }
        },
        argsDisplay = "table, index, value",
        description = "Sets the real value of table[index] to value, without using the __newindex metavalue. table must be a table, index any value different from nil and NaN, and value any Lua value.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-rawset",
        type = "function"
      },
      require = {
        args = {
          {
            name = "modname"
          }
        },
        argsDisplay = "modname",
        description = "Loads the given module. The function starts by looking into the package.loaded table to determine whether modname is already loaded. If it is, then require returns the value stored at package.loaded[modname]. (The absence of a second result in this case signals that this call did not have to load the module.) Otherwise, it tries to find a loader for the module.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-require",
        type = "function"
      },
      select = {
        args = {
          {
            name = "index"
          }
        },
        argsDisplay = "index, ···",
        description = "If index is a number, returns all arguments after argument number index; a negative number indexes from the end (-1 is the last argument). Otherwise, index must be the string \"#\", and select returns the total number of extra arguments it received.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-select",
        type = "function"
      },
      setmetatable = {
        args = {
          {
            name = "table"
          },
          {
            name = "metatable"
          }
        },
        argsDisplay = "table, metatable",
        description = "Sets the metatable for the given table. If metatable is nil, removes the metatable of the given table. If the original metatable has a __metatable field, raises an error.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-setmetatable",
        type = "function"
      },
      string = {
        description = "This library provides generic functions for string manipulation, such as finding and extracting substrings, and pattern matching. When indexing a string in Lua, the first character is at position 1 (not at 0, as in C). Indices are allowed to be negative and are interpreted as indexing backwards, from the end of the string. Thus, the last character is at position -1, and so on.",
        fields = {
          byte = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s [, i [, j]]",
            description = "Returns the internal numeric codes of the characters s[i], s[i+1], ..., s[j]. The default value for i is 1; the default value for j is i. These indices are corrected following the same rules of function string.sub.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.byte",
            type = "function"
          },
          char = {
            args = {},
            argsDisplay = "···",
            description = "Receives zero or more integers. Returns a string with length equal to the number of arguments, in which each character has the internal numeric code equal to its corresponding argument.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.char",
            type = "function"
          },
          dump = {
            args = {
              {
                name = "function"
              }
            },
            argsDisplay = "function [, strip]",
            description = "Returns a string containing a binary representation (a binary chunk) of the given function, so that a later load on this string returns a copy of the function (but with new upvalues). If strip is a true value, the binary representation may not include all debug information about the function, to save space.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.dump",
            type = "function"
          },
          find = {
            args = {
              {
                name = "s"
              },
              {
                name = "pattern"
              }
            },
            argsDisplay = "s, pattern [, init [, plain]]",
            description = "Looks for the first match of pattern (see §6.4.1) in the string s. If it finds a match, then find returns the indices of s where this occurrence starts and ends; otherwise, it returns fail. A third, optional numeric argument init specifies where to start the search; its default value is 1 and can be negative. A value of true as a fourth, optional argument plain turns off the pattern matching facilities, so the function does a plain \"find substring\" operation, with no characters in pattern being considered magic.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.find",
            type = "function"
          },
          format = {
            args = {
              {
                name = "formatstring"
              }
            },
            argsDisplay = "formatstring, ···",
            description = "Returns a formatted version of its variable number of arguments following the description given in its first argument, which must be a string. The format string follows the same rules as the ISO C function sprintf. The only differences are that the conversion specifiers and modifiers *, h, L, l, and n are not supported and that there is an extra specifier, q.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.format",
            type = "function"
          },
          gmatch = {
            args = {
              {
                name = "s"
              },
              {
                name = "pattern"
              }
            },
            argsDisplay = "s, pattern [, init]",
            description = "Returns an iterator function that, each time it is called, returns the next captures from pattern (see §6.4.1) over the string s. If pattern specifies no captures, then the whole match is produced in each call. A third, optional numeric argument init specifies where to start the search; its default value is 1 and can be negative.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.gmatch",
            type = "function"
          },
          gsub = {
            args = {
              {
                name = "s"
              },
              {
                name = "pattern"
              },
              {
                name = "repl"
              }
            },
            argsDisplay = "s, pattern, repl [, n]",
            description = "Returns a copy of s in which all (or the first n, if given) occurrences of the pattern (see §6.4.1) have been replaced by a replacement string specified by repl, which can be a string, a table, or a function. gsub also returns, as its second value, the total number of matches that occurred. The name gsub comes from Global SUBstitution.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.gsub",
            type = "function"
          },
          len = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s",
            description = "Receives a string and returns its length. The empty string \"\" has length 0. Embedded zeros are counted, so \"a\\000bc\\000\" has length 5.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.len",
            type = "function"
          },
          lower = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s",
            description = "Receives a string and returns a copy of this string with all uppercase letters changed to lowercase. All other characters are left unchanged. The definition of what an uppercase letter is depends on the current locale.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.lower",
            type = "function"
          },
          match = {
            args = {
              {
                name = "s"
              },
              {
                name = "pattern"
              }
            },
            argsDisplay = "s, pattern [, init]",
            description = "Looks for the first match of the pattern (see §6.4.1) in the string s. If it finds one, then match returns the captures from the pattern; otherwise it returns fail. If pattern specifies no captures, then the whole match is returned. A third, optional numeric argument init specifies where to start the search; its default value is 1 and can be negative.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.match",
            type = "function"
          },
          pack = {
            args = {
              {
                name = "fmt"
              },
              {
                name = "v1"
              },
              {
                name = "v2"
              }
            },
            argsDisplay = "fmt, v1, v2, ···",
            description = "Returns a binary string containing the values v1, v2, etc. serialized in binary form (packed) according to the format string fmt (see §6.4.2).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.pack",
            type = "function"
          },
          packsize = {
            args = {
              {
                name = "fmt"
              }
            },
            argsDisplay = "fmt",
            description = "Returns the size of a string resulting from string.pack with the given format. The format string cannot have the variable-length options 's' or 'z' (see §6.4.2).",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.packsize",
            type = "function"
          },
          rep = {
            args = {
              {
                name = "s"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "s, n [, sep]",
            description = "Returns a string that is the concatenation of n copies of the string s separated by the string sep. The default value for sep is the empty string (that is, no separator). Returns the empty string if n is not positive.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.rep",
            type = "function"
          },
          reverse = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s",
            description = "Returns a string that is the string s reversed.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.reverse",
            type = "function"
          },
          sub = {
            args = {
              {
                name = "s"
              },
              {
                name = "i"
              }
            },
            argsDisplay = "s, i [, j]",
            description = "Returns the substring of s that starts at i and continues until j; i and j can be negative. If j is absent, then it is assumed to be equal to -1 (which is the same as the string length). In particular, the call string.sub(s,1,j) returns a prefix of s with length j, and string.sub(s, -i) (for a positive i) returns a suffix of s with length i.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.sub",
            type = "function"
          },
          unpack = {
            args = {
              {
                name = "fmt"
              },
              {
                name = "s"
              }
            },
            argsDisplay = "fmt, s [, pos]",
            description = "Returns the values packed in string s (see string.pack) according to the format string fmt (see §6.4.2). An optional pos marks where to start reading in s (default is 1). After the read values, this function also returns the index of the first unread byte in s.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.unpack",
            type = "function"
          },
          upper = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s",
            description = "Receives a string and returns a copy of this string with all lowercase letters changed to uppercase. All other characters are left unchanged. The definition of what a lowercase letter is depends on the current locale.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-string.upper",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.4",
        type = "table"
      },
      table = {
        description = "This library provides generic functions for table manipulation. It provides all its functions inside the table table.",
        fields = {
          concat = {
            args = {
              {
                name = "list"
              }
            },
            argsDisplay = "list [, sep [, i [, j]]]",
            description = "Given a list where all elements are strings or numbers, returns the string list[i]..sep..list[i+1] ··· sep..list[j]. The default value for sep is the empty string, the default for i is 1, and the default for j is #list. If i is greater than j, returns the empty string.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-table.concat",
            type = "function"
          },
          insert = {
            args = {
              {
                name = "list"
              }
            },
            argsDisplay = "list, [pos,] value",
            description = "Inserts element value at position pos in list, shifting up the elements list[pos], list[pos+1], ···, list[#list]. The default value for pos is #list+1, so that a call table.insert(t,x) inserts x at the end of the list t.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-table.insert",
            type = "function"
          },
          move = {
            args = {
              {
                name = "a1"
              },
              {
                name = "f"
              },
              {
                name = "e"
              },
              {
                name = "t"
              }
            },
            argsDisplay = "a1, f, e, t [,a2]",
            description = "Moves elements from the table a1 to the table a2, performing the equivalent to the following multiple assignment: a2[t],··· = a1[f],···,a1[e]. The default for a2 is a1. The destination range can overlap with the source range. The number of elements to be moved must fit in a Lua integer.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-table.move",
            type = "function"
          },
          pack = {
            args = {},
            argsDisplay = "···",
            description = "Returns a new table with all arguments stored into keys 1, 2, etc. and with a field \"n\" with the total number of arguments. Note that the resulting table may not be a sequence, if some arguments are nil.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-table.pack",
            type = "function"
          },
          remove = {
            args = {
              {
                name = "list"
              }
            },
            argsDisplay = "list [, pos]",
            description = "Removes from list the element at position pos, returning the value of the removed element. When pos is an integer between 1 and #list, it shifts down the elements list[pos+1], list[pos+2], ···, list[#list] and erases element list[#list]; The index pos can also be 0 when #list is 0, or #list + 1.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-table.remove",
            type = "function"
          },
          sort = {
            args = {
              {
                name = "list"
              }
            },
            argsDisplay = "list [, comp]",
            description = "Sorts the list elements in a given order, in-place, from list[1] to list[#list]. If comp is given, then it must be a function that receives two list elements and returns true when the first element must come before the second in the final order (so that, after the sort, i < j implies not comp(list[j],list[i])). If comp is not given, then the standard Lua operator < is used instead.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-table.sort",
            type = "function"
          },
          unpack = {
            args = {
              {
                name = "list"
              }
            },
            argsDisplay = "list [, i [, j]]",
            description = "Returns the elements from the given list. This function is equivalent to",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-table.unpack",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.6",
        type = "table"
      },
      tonumber = {
        args = {
          {
            name = "e"
          }
        },
        argsDisplay = "e [, base]",
        description = "When called with no base, tonumber tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then tonumber returns this number; otherwise, it returns fail.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-tonumber",
        type = "function"
      },
      tostring = {
        args = {
          {
            name = "v"
          }
        },
        argsDisplay = "v",
        description = "Receives a value of any type and converts it to a string in a human-readable format.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-tostring",
        type = "function"
      },
      type = {
        args = {
          {
            name = "v"
          }
        },
        argsDisplay = "v",
        description = "Returns the type of its only argument, coded as a string. The possible results of this function are \"nil\" (a string, not the value nil), \"number\", \"string\", \"boolean\", \"table\", \"function\", \"thread\", and \"userdata\".",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-type",
        type = "function"
      },
      utf8 = {
        description = "This library provides basic support for UTF-8 encoding. It provides all its functions inside the table utf8. This library does not provide any support for Unicode other than the handling of the encoding. Any operation that needs the meaning of a character, such as character classification, is outside its scope.",
        fields = {
          char = {
            args = {},
            argsDisplay = "···",
            description = "Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence and returns a string with the concatenation of all these sequences.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-utf8.char",
            type = "function"
          },
          charpattern = {
            description = "The pattern (a string, not a function) \"[\\0-\\x7F\\xC2-\\xFD][\\x80-\\xBF]*\" (see §6.4.1), which matches exactly one UTF-8 byte sequence, assuming that the subject is a valid UTF-8 string.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-utf8.charpattern",
            type = "unknown"
          },
          codepoint = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s [, i [, j [, lax]]]",
            description = "Returns the code points (as integers) from all characters in s that start between byte position i and j (both included). The default for i is 1 and for j is i. It raises an error if it meets any invalid byte sequence.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-utf8.codepoint",
            type = "function"
          },
          codes = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s [, lax]",
            description = "Returns values so that the construction",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-utf8.codes",
            type = "function"
          },
          len = {
            args = {
              {
                name = "s"
              }
            },
            argsDisplay = "s [, i [, j [, lax]]]",
            description = "Returns the number of UTF-8 characters in string s that start between positions i and j (both inclusive). The default for i is 1 and for j is -1. If it finds any invalid byte sequence, returns fail plus the position of the first invalid byte.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-utf8.len",
            type = "function"
          },
          offset = {
            args = {
              {
                name = "s"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "s, n [, i]",
            description = "Returns the position (in bytes) where the encoding of the n-th character of s (counting from position i) starts. A negative n gets characters before position i. The default for i is 1 when n is non-negative and #s + 1 otherwise, so that utf8.offset(s, -n) gets the offset of the n-th character from the end of the string. If the specified character is neither in the subject nor right after its end, the function returns fail.",
            link = "https://www.lua.org/manual/5.4/manual.html#pdf-utf8.offset",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.4/manual.html#6.5",
        type = "table"
      },
      warn = {
        args = {
          {
            name = "msg1"
          }
        },
        argsDisplay = "msg1, ···",
        description = "Emits a warning with a message composed by the concatenation of all its arguments (which should be strings).",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-warn",
        type = "function"
      },
      xpcall = {
        args = {
          {
            name = "f"
          },
          {
            name = "msgh"
          }
        },
        argsDisplay = "f, msgh [, arg1, ···]",
        description = "This function is similar to pcall, except that it sets a new message handler msgh.",
        link = "https://www.lua.org/manual/5.4/manual.html#pdf-xpcall",
        type = "function"
      }
    },
    type = "table"
  },
  namedTypes = {
    file = {
      fields = {},
      metatable = {
        fields = {
          __index = {
            fields = {
              close = {
                args = {
                  {
                    name = "self"
                  }
                },
                argsDisplay = "self",
                argsDisplayOmitSelf = "",
                description = "Closes file. Note that files are automatically closed when their handles are garbage collected, but that takes an unpredictable amount of time to happen.",
                link = "https://www.lua.org/manual/5.4/manual.html#pdf-file:close",
                type = "function"
              },
              flush = {
                args = {
                  {
                    name = "self"
                  }
                },
                argsDisplay = "self",
                argsDisplayOmitSelf = "",
                description = "Saves any written data to file.",
                link = "https://www.lua.org/manual/5.4/manual.html#pdf-file:flush",
                type = "function"
              },
              lines = {
                args = {
                  {
                    name = "self"
                  }
                },
                argsDisplay = "self, ···",
                argsDisplayOmitSelf = "···",
                description = "Returns an iterator function that, each time it is called, reads the file according to the given formats. When no format is given, uses \"l\" as a default. As an example, the construction",
                link = "https://www.lua.org/manual/5.4/manual.html#pdf-file:lines",
                type = "function"
              },
              read = {
                args = {
                  {
                    name = "self"
                  }
                },
                argsDisplay = "self, ···",
                argsDisplayOmitSelf = "···",
                description = "Reads the file file, according to the given formats, which specify what to read. For each format, the function returns a string or a number with the characters read, or fail if it cannot read data with the specified format. (In this latter case, the function does not read subsequent formats.) When called without arguments, it uses a default format that reads the next line (see below).",
                link = "https://www.lua.org/manual/5.4/manual.html#pdf-file:read",
                type = "function"
              },
              seek = {
                args = {
                  {
                    name = "self"
                  }
                },
                argsDisplay = "self, [whence [, offset]]",
                argsDisplayOmitSelf = "[whence [, offset]]",
                description = "Sets and gets the file position, measured from the beginning of the file, to the position given by offset plus a base specified by the string whence, as follows:",
                link = "https://www.lua.org/manual/5.4/manual.html#pdf-file:seek",
                type = "function"
              },
              setvbuf = {
                args = {
                  {
                    name = "self"
                  },
                  {
                    name = "mode"
                  }
                },
                argsDisplay = "self, mode [, size]",
                argsDisplayOmitSelf = "mode [, size]",
                description = "Sets the buffering mode for a file. There are three available modes:",
                link = "https://www.lua.org/manual/5.4/manual.html#pdf-file:setvbuf",
                type = "function"
              },
              write = {
                args = {
                  {
                    name = "self"
                  }
                },
                argsDisplay = "self, ···",
                argsDisplayOmitSelf = "···",
                description = "Writes the value of each of its arguments to file. The arguments must be strings or numbers.",
                link = "https://www.lua.org/manual/5.4/manual.html#pdf-file:write",
                type = "function"
              }
            },
            type = "table"
          }
        },
        type = "table"
      },
      type = "table"
    }
  }
}