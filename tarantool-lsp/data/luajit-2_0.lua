return {
  global = {
    fields = {
      _VERSION = {
        description = "A global variable (not a function) that holds a string containing the current interpreter version. The current contents of this variable is \"Lua 5.1\".",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-_VERSION",
        type = "string"
      },
      assert = {
        args = {
          {
            name = "v"
          }
        },
        argsDisplay = "v [, message]",
        description = "Issues an error when the value of its argument v is false (i.e., nil or false); otherwise, returns all its arguments. message is an error message; when absent, it defaults to \"assertion failed!\"",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-assert",
        type = "function"
      },
      bit = {
        description = "This library provides bitwise operations. It provides all its functions inside the table bit.",
        fields = {
          arshift = {
            args = {
              {
                name = "x"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "x, n",
            description = "Returns the bitwise arithmetic right-shift of its first argument by the number of bits given by the second argument.",
            link = "https://bitop.luajit.org/api.html#lshift",
            type = "function"
          },
          band = {
            args = {
              {
                name = "x1"
              }
            },
            argsDisplay = "x1, [, x2, ...]",
            description = "Returns the bitwise and of all of its arguments.",
            link = "https://bitop.luajit.org/api.html#bor",
            type = "function"
          },
          bnot = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the bitwise not of its argument.",
            link = "https://bitop.luajit.org/api.html#bnot",
            type = "function"
          },
          bor = {
            args = {
              {
                name = "x1"
              }
            },
            argsDisplay = "x1, [, x2, ...]",
            description = "Returns the bitwise or of all of its arguments.",
            link = "https://bitop.luajit.org/api.html#bor",
            type = "function"
          },
          bswap = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Swaps the bytes of its argument and returns it.",
            link = "https://bitop.luajit.org/api.html#bswap",
            type = "function"
          },
          bxor = {
            args = {
              {
                name = "x1"
              }
            },
            argsDisplay = "x1, [, x2, ...]",
            description = "Returns the bitwise xor of all of its arguments.",
            link = "https://bitop.luajit.org/api.html#bor",
            type = "function"
          },
          lshift = {
            args = {
              {
                name = "x"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "x, n",
            description = "Returns the bitwise logical left-shift of its first argument by the number of bits given by the second argument.",
            link = "https://bitop.luajit.org/api.html#lshift",
            type = "function"
          },
          rol = {
            args = {
              {
                name = "x"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "x, n",
            description = "Returns either the bitwise left rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.",
            link = "https://bitop.luajit.org/api.html#rol",
            type = "function"
          },
          ror = {
            args = {
              {
                name = "x"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "x, n",
            description = "Returns either the bitwise right rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.",
            link = "https://bitop.luajit.org/api.html#rol",
            type = "function"
          },
          rshift = {
            args = {
              {
                name = "x"
              },
              {
                name = "n"
              }
            },
            argsDisplay = "x, n",
            description = "Returns the bitwise logical right-shift of its first argument by the number of bits given by the second argument.",
            link = "https://bitop.luajit.org/api.html#lshift",
            type = "function"
          },
          tobit = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Normalizes a number to the numeric range for bit operations and returns it.",
            link = "https://bitop.luajit.org/api.html#tobit",
            type = "function"
          },
          tohex = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x [, n]",
            description = "Converts its first argument to a hex string.",
            link = "https://bitop.luajit.org/api.html#tohex",
            type = "function"
          }
        },
        link = "https://bitop.luajit.org/",
        type = "table"
      },
      collectgarbage = {
        args = {},
        argsDisplay = "[opt [, arg]]",
        description = "This function is a generic interface to the garbage collector. It performs different functions according to its first argument, opt:",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-collectgarbage",
        type = "function"
      },
      coroutine = {
        description = "The operations related to coroutines comprise a sub-library of the basic library and come inside the table coroutine. See §2.11 for a general description of coroutines.",
        fields = {
          create = {
            args = {
              {
                name = "f"
              }
            },
            argsDisplay = "f",
            description = "Creates a new coroutine, with body f. f must be a Lua function. Returns this new coroutine, an object with type \"thread\".",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.create",
            type = "function"
          },
          resume = {
            args = {
              {
                name = "co"
              }
            },
            argsDisplay = "co [, val1, ···]",
            description = "Starts or continues the execution of coroutine co. The first time you resume a coroutine, it starts running its body. The values val1, ··· are passed as the arguments to the body function. If the coroutine has yielded, resume restarts it; the values val1, ··· are passed as the results from the yield.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.resume",
            type = "function"
          },
          running = {
            args = {},
            argsDisplay = "",
            description = "Returns the running coroutine, or nil when called by the main thread.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.running",
            type = "function"
          },
          status = {
            args = {
              {
                name = "co"
              }
            },
            argsDisplay = "co",
            description = "Returns the status of coroutine co, as a string: \"running\", if the coroutine is running (that is, it called status); \"suspended\", if the coroutine is suspended in a call to yield, or if it has not started running yet; \"normal\" if the coroutine is active but not running (that is, it has resumed another coroutine); and \"dead\" if the coroutine has finished its body function, or if it has stopped with an error.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.status",
            type = "function"
          },
          wrap = {
            args = {
              {
                name = "f"
              }
            },
            argsDisplay = "f",
            description = "Creates a new coroutine, with body f. f must be a Lua function. Returns a function that resumes the coroutine each time it is called. Any arguments passed to the function behave as the extra arguments to resume. Returns the same values returned by resume, except the first boolean. In case of error, propagates the error.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.wrap",
            type = "function"
          },
          yield = {
            args = {},
            argsDisplay = "···",
            description = "Suspends the execution of the calling coroutine. The coroutine cannot be running a C function, a metamethod, or an iterator. Any arguments to yield are passed as extra results to resume.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.yield",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.2",
        type = "table"
      },
      debug = {
        description = "This library provides the functionality of the debug interface to Lua programs. You should exert care when using this library. The functions provided here should be used exclusively for debugging and similar tasks, such as profiling. Please resist the temptation to use them as a usual programming tool: they can be very slow. Moreover, several of these functions violate some assumptions about Lua code (e.g., that variables local to a function cannot be accessed from outside or that userdata metatables cannot be changed by Lua code) and therefore can compromise otherwise secure code.",
        fields = {
          debug = {
            args = {},
            argsDisplay = "",
            description = "Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.debug",
            type = "function"
          },
          getfenv = {
            args = {
              {
                name = "o"
              }
            },
            argsDisplay = "o",
            description = "Returns the environment of object o.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.getfenv",
            type = "function"
          },
          gethook = {
            args = {},
            argsDisplay = "[thread]",
            description = "Returns the current hook settings of the thread, as three values: the current hook function, the current hook mask, and the current hook count (as set by the debug.sethook function).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.gethook",
            type = "function"
          },
          getinfo = {
            args = {},
            argsDisplay = "[thread,] f [, what]",
            description = "Returns a table with information about a function. You can give the function directly or you can give a number as the value of f, which means the function running at level f of the call stack of the given thread: level 0 is the current function (getinfo itself); level 1 is the function that called getinfo (except for tail calls, which do not count on the stack); and so on. If f is a number larger than the number of active functions, then getinfo returns nil.",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-debug.getinfo",
            type = "function"
          },
          getlocal = {
            args = {},
            argsDisplay = "[thread,] f, local",
            description = "This function returns the name and the value of the local variable with index local of the function at level f of the stack. This function accesses not only explicit local variables, but also parameters, temporaries, etc.",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-debug.getlocal",
            type = "function"
          },
          getmetatable = {
            args = {
              {
                name = "object"
              }
            },
            argsDisplay = "object",
            description = "Returns the metatable of the given object or nil if it does not have a metatable.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.getmetatable",
            type = "function"
          },
          getregistry = {
            args = {},
            argsDisplay = "",
            description = "Returns the registry table (see §3.5).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.getregistry",
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
            description = "This function returns the name and the value of the upvalue with index up of the function f. The function returns nil if there is no upvalue with the given index.",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-debug.getupvalue",
            type = "function"
          },
          setfenv = {
            args = {
              {
                name = "object"
              },
              {
                name = "table"
              }
            },
            argsDisplay = "object, table",
            description = "Sets the environment of the given object to the given table. Returns object.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.setfenv",
            type = "function"
          },
          sethook = {
            args = {},
            argsDisplay = "[thread,] hook, mask [, count]",
            description = "Sets the given function as a hook. The string mask and the number count describe when the hook will be called. The string mask may have the following characters, with the given meaning:",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.sethook",
            type = "function"
          },
          setlocal = {
            args = {},
            argsDisplay = "[thread,] level, local, value",
            description = "This function assigns the value value to the local variable with index local of the function at level level of the stack. The function returns nil if there is no local variable with the given index, and raises an error when called with a level out of range. (You can call getinfo to check whether the level is valid.) Otherwise, it returns the name of the local variable.",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-debug.setlocal",
            type = "function"
          },
          setmetatable = {
            args = {
              {
                name = "object"
              },
              {
                name = "table"
              }
            },
            argsDisplay = "object, table",
            description = "Sets the metatable for the given object to the given table (which can be nil).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.setmetatable",
            type = "function"
          },
          setupvalue = {
            args = {
              {
                name = "func"
              },
              {
                name = "up"
              },
              {
                name = "value"
              }
            },
            argsDisplay = "func, up, value",
            description = "This function assigns the value value to the upvalue with index up of the function func. The function returns nil if there is no upvalue with the given index. Otherwise, it returns the name of the upvalue.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.setupvalue",
            type = "function"
          },
          traceback = {
            args = {},
            argsDisplay = "[thread,] [message [, level]]",
            description = "Returns a string with a traceback of the call stack. An optional message string is appended at the beginning of the traceback. An optional level number tells at which level to start the traceback (default is 1, the function calling traceback).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-debug.traceback",
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
            description = "Returns an unique identifier (as a light userdata) for the upvalue numbered n from the given function.",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-debug.upvalueid",
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
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-debug.upvaluejoin",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.9",
        type = "table"
      },
      dofile = {
        args = {},
        argsDisplay = "[filename]",
        description = "Opens the named file and executes its contents as a Lua chunk. When called without arguments, dofile executes the contents of the standard input (stdin). Returns all values returned by the chunk. In case of errors, dofile propagates the error to its caller (that is, dofile does not run in protected mode).",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-dofile",
        type = "function"
      },
      error = {
        args = {
          {
            name = "message"
          }
        },
        argsDisplay = "message [, level]",
        description = "Terminates the last protected function called and returns message as the error message. Function error never returns.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-error",
        type = "function"
      },
      ffi = {
        description = "The FFI library allows calling external C functions and using C data structures from pure Lua code.",
        fields = {
          C = {
            description = "The default C library namespace. It binds to the default set of symbols or libraries on the target system.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_C",
            type = "unknown"
          },
          abi = {
            args = {
              {
                name = "param"
              }
            },
            argsDisplay = "param",
            description = "Returns true if param (a Lua string) applies for the target ABI (Application Binary Interface). Returns false otherwise.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_abi",
            type = "function"
          },
          alignof = {
            args = {
              {
                name = "ct"
              }
            },
            argsDisplay = "ct",
            description = "Returns the minimum required alignment for ct in bytes.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_alignof",
            type = "function"
          },
          arch = {
            description = "Contains the target architecture name. Same contents as jit.arch.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_arch",
            type = "string"
          },
          cast = {
            args = {
              {
                name = "ct"
              },
              {
                name = "init"
              }
            },
            argsDisplay = "ct, init",
            description = "Creates a scalar cdata object for the given ct. The cdata object is initialized with init using the 'cast' variant of the C type conversion rules.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_cast",
            type = "function"
          },
          cdef = {
            args = {
              {
                name = "def"
              }
            },
            argsDisplay = "def",
            description = "Adds multiple C declarations for types or external symbols (named variables or functions).",
            link = "https://luajit.org/ext_ffi_api.html#ffi_cdef",
            type = "function"
          },
          copy = {
            type = "function",
            variants = {
              {
                args = {
                  {
                    name = "dst"
                  },
                  {
                    name = "src"
                  },
                  {
                    name = "len"
                  }
                },
                argsDisplay = "dst, src, len",
                description = "Copies the data pointed to by src to dst. dst is converted to a 'void *' and src is converted to a 'const void *'. The number of bytes to copy is given by len.",
                link = "https://luajit.org/ext_ffi_api.html#ffi_copy"
              },
              {
                args = {
                  {
                    name = "dst"
                  },
                  {
                    name = "src"
                  }
                },
                argsDisplay = "dst, src",
                description = "Copies the data pointed to by src to dst. dst is converted to a 'void *' and src is converted to a 'const void *'. The source of the copy must be a Lua string. All bytes of the string plus a zero-terminator are copied to dst.",
                link = "https://luajit.org/ext_ffi_api.html#ffi_copy"
              }
            }
          },
          errno = {
            args = {},
            argsDisplay = "[newerr]",
            description = "Returns the error number set by the last C function call which indicated an error condition. If the optional newerr argument is present, the error number is set to the new value and the previous value is returned.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_errno",
            type = "function"
          },
          fill = {
            args = {
              {
                name = "dst"
              },
              {
                name = "len"
              }
            },
            argsDisplay = "dst, len, [, c]",
            description = "Fills the data pointed to by dst with len constant bytes, given by c. If c is omitted, the data is zero-filled.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_fill",
            type = "function"
          },
          gc = {
            args = {
              {
                name = "cdata"
              },
              {
                name = "finalizer"
              }
            },
            argsDisplay = "cdata, finalizer",
            description = "Associates a finalizer with a pointer or aggregate cdata object. The cdata object is returned unchanged.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_gc",
            type = "function"
          },
          istype = {
            args = {
              {
                name = "ct"
              },
              {
                name = "obj"
              }
            },
            argsDisplay = "ct, obj",
            description = "Returns true if obj has the C type given by ct. Returns false otherwise.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_istype",
            type = "function"
          },
          load = {
            args = {
              {
                name = "name"
              }
            },
            argsDisplay = "name [, global]",
            description = "Loads the dynamic library given by name and returns a new C library namespace which binds to its symbols. On POSIX systems, if global is true, the library symbols are loaded into the global namespace, too.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_load",
            type = "function"
          },
          metatype = {
            args = {
              {
                name = "ct"
              },
              {
                name = "metatable"
              }
            },
            argsDisplay = "ct, metatable",
            description = "Creates a ctype object for the given ct and associates it with a metatable. Only struct/union types, complex numbers and vectors are allowed.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_metatype",
            type = "function"
          },
          new = {
            args = {
              {
                name = "ct"
              }
            },
            argsDisplay = "ct [, nelem [, init, ...]]",
            description = "Creates a cdata object for the given C type.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_new",
            type = "function"
          },
          offsetof = {
            args = {
              {
                name = "ct"
              },
              {
                name = "field"
              }
            },
            argsDisplay = "ct, field",
            description = "Returns the offset (in bytes) of field relative to the start of ct, which must be a struct. Additionally returns the position and the field size (in bits) for bit fields.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_offsetof",
            type = "function"
          },
          os = {
            description = "Contains the target OS name. Same contents as jit.os.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_os",
            type = "string"
          },
          sizeof = {
            args = {
              {
                name = "ct"
              }
            },
            argsDisplay = "ct [, nelem]",
            description = "Returns the size of ct in bytes. Returns nil if the size is not known (e.g. for 'void' or function types). Requires nelem for VLA/VLS types, except for cdata objects.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_sizeof",
            type = "function"
          },
          string = {
            args = {
              {
                name = "ptr"
              }
            },
            argsDisplay = "ct [, len]",
            description = "Creates an interned Lua string from the data pointed to by ptr. If the optional argument len is missing, ptr is converted to a 'char *' and the data is assumed to be zero-terminated.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_string",
            type = "function"
          },
          typeof = {
            args = {
              {
                name = "ct"
              }
            },
            argsDisplay = "ct",
            description = "Creates a ctype object for the given ct.",
            link = "https://luajit.org/ext_ffi_api.html#ffi_typeof",
            type = "function"
          }
        },
        link = "https://luajit.org/ext_ffi_api.html",
        type = "table"
      },
      getfenv = {
        args = {},
        argsDisplay = "[f]",
        description = "Returns the current environment in use by the function. f can be a Lua function or a number that specifies the function at that stack level: Level 1 is the function calling getfenv. If the given function is not a Lua function, or if f is 0, getfenv returns the global environment. The default for f is 1.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-getfenv",
        type = "function"
      },
      getmetatable = {
        args = {
          {
            name = "object"
          }
        },
        argsDisplay = "object",
        description = "If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a \"__metatable\" field, returns the associated value. Otherwise, returns the metatable of the given object.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-getmetatable",
        type = "function"
      },
      io = {
        description = "The I/O library provides two different styles for file manipulation. The first one uses implicit file descriptors; that is, there are operations to set a default input file and a default output file, and all input/output operations are over these default files. The second style uses explicit file descriptors.",
        fields = {
          close = {
            args = {},
            argsDisplay = "[file]",
            description = "Equivalent to file:close(). Without a file, closes the default output file.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.close",
            type = "function"
          },
          flush = {
            args = {},
            argsDisplay = "",
            description = "Equivalent to file:flush over the default output file.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.flush",
            type = "function"
          },
          input = {
            args = {},
            argsDisplay = "[file]",
            description = "When called with a file name, it opens the named file (in text mode), and sets its handle as the default input file. When called with a file handle, it simply sets this file handle as the default input file. When called without parameters, it returns the current default input file.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.input",
            type = "function"
          },
          lines = {
            args = {},
            argsDisplay = "[filename ···]",
            description = "Opens the given file name in read mode and returns an iterator function that works like file:lines(···) over the opened file. When the iterator function detects the end of file, it returns nil (to finish the loop) and automatically closes the file.",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-io.lines",
            type = "function"
          },
          open = {
            args = {
              {
                name = "filename"
              }
            },
            argsDisplay = "filename [, mode]",
            description = "This function opens a file, in the mode specified in the string mode. It returns a new file handle, or, in case of errors, nil plus an error message.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.open",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.output",
            type = "function"
          },
          popen = {
            args = {
              {
                name = "prog"
              }
            },
            argsDisplay = "prog [, mode]",
            description = "Starts program prog in a separated process and returns a file handle that you can use to read data from this program (if mode is \"r\", the default) or to write data to this program (if mode is \"w\").",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.popen",
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
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-io.read",
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
            description = "Returns a handle for a temporary file. This file is opened in update mode and it is automatically removed when the program ends.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.tmpfile",
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
            description = "Checks whether obj is a valid file handle. Returns the string \"file\" if obj is an open file handle, \"closed file\" if obj is a closed file handle, or nil if obj is not a file handle.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.type",
            type = "function"
          },
          write = {
            args = {},
            argsDisplay = "···",
            description = "Equivalent to io.output():write.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-io.write",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.7",
        type = "table"
      },
      ipairs = {
        args = {
          {
            name = "t"
          }
        },
        argsDisplay = "t",
        description = "Returns three values: an iterator function, the table t, and 0, so that the construction",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-ipairs",
        type = "function"
      },
      jit = {
        description = "The functions in this built-in module control the behavior of the JIT compiler engine.",
        fields = {
          arch = {
            description = "Contains the target architecture name.",
            link = "https://luajit.org/ext_jit.html#jit_arch",
            type = "string"
          },
          flush = {
            type = "function",
            variants = {
              {
                args = {},
                description = "Flushes the whole cache of compiled code.",
                link = "https://luajit.org/ext_jit.html#jit_flush"
              },
              {
                args = {},
                argsDisplay = "[func [, b]]",
                description = "Flushes the code, but doesn't affect the enable/disable status.",
                link = "https://luajit.org/ext_jit.html#jit_onoff_func"
              },
              {
                args = {
                  {
                    name = "tr"
                  }
                },
                argsDisplay = "tr",
                description = "Flushes the root trace, specified by its number, and all of its side traces from the cache. The code for the trace will be retained as long as there are any other traces which link to it.",
                link = "https://luajit.org/ext_jit.html#jit_flush_tr"
              }
            }
          },
          off = {
            type = "function",
            variants = {
              {
                args = {},
                description = "Turns the whole JIT compiler off.",
                link = "https://luajit.org/ext_jit.html#jit_onoff"
              },
              {
                args = {},
                argsDisplay = "[func [, b]]",
                description = "Disables JIT compilation for a Lua function and flushes any already compiled code from the code cache.",
                link = "https://luajit.org/ext_jit.html#jit_onoff_func"
              }
            }
          },
          on = {
            type = "function",
            variants = {
              {
                args = {},
                description = "Turns the whole JIT compiler on (default).",
                link = "https://luajit.org/ext_jit.html#jit_onoff"
              },
              {
                args = {},
                argsDisplay = "[func [, b]]",
                description = "Enables JIT compilation for a Lua function.",
                link = "https://luajit.org/ext_jit.html#jit_onoff_func"
              }
            }
          },
          opt = {
            description = "This sub-module provides the backend for the -O command line option.",
            fields = {
              start = {
                args = {},
                type = "function"
              }
            },
            link = "https://luajit.org/ext_jit.html#jit_opt",
            type = "table"
          },
          os = {
            description = "Contains the target OS name.",
            link = "https://luajit.org/ext_jit.html#jit_os",
            type = "string"
          },
          status = {
            description = "Contains the LuaJIT version string.",
            link = "https://luajit.org/ext_jit.html#jit_version",
            type = "string"
          },
          util = {
            description = "This sub-module holds functions to introspect the bytecode, generated traces, the IR and the generated machine code.",
            fields = {
              funcbc = {
                args = {},
                type = "function"
              },
              funcinfo = {
                args = {},
                type = "function"
              },
              funck = {
                args = {},
                type = "function"
              },
              funcuvname = {
                args = {},
                type = "function"
              },
              ircalladdr = {
                args = {},
                type = "function"
              },
              traceexitstub = {
                args = {},
                type = "function"
              },
              traceinfo = {
                args = {},
                type = "function"
              },
              traceir = {
                args = {},
                type = "function"
              },
              tracek = {
                args = {},
                type = "function"
              },
              tracemc = {
                args = {},
                type = "function"
              },
              tracesnap = {
                args = {},
                type = "function"
              }
            },
            link = "https://luajit.org/ext_jit.html#jit_util",
            type = "table"
          },
          version_num = {
            description = "Contains the version number of the LuaJIT core.",
            link = "https://luajit.org/ext_jit.html#jit_version_num",
            type = "number"
          }
        },
        link = "https://luajit.org/ext_jit.html",
        type = "table"
      },
      load = {
        args = {
          {
            name = "ld"
          }
        },
        argsDisplay = "ld [, source [, mode [, env]]]",
        description = "Loads a chunk.",
        link = "https://www.lua.org/manual/5.2/manual.html#pdf-load",
        type = "function"
      },
      loadfile = {
        args = {},
        argsDisplay = "[filename [, mode [, env]]]",
        description = "Similar to load, but gets the chunk from file filename or from the standard input, if no file name is given.",
        link = "https://www.lua.org/manual/5.2/manual.html#pdf-loadfile",
        type = "function"
      },
      loadstring = {
        args = {
          {
            name = "ld"
          }
        },
        argsDisplay = "ld [, source [, mode [, env]]]",
        description = "An alias for string.",
        link = "https://www.lua.org/manual/5.2/manual.html#pdf-load",
        type = "function"
      },
      math = {
        description = "This library is an interface to the standard C math library. It provides all its functions inside the table math.",
        fields = {
          abs = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the absolute value of x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.abs",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.acos",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.asin",
            type = "function"
          },
          atan = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the arc tangent of x (in radians).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.atan",
            type = "function"
          },
          atan2 = {
            args = {
              {
                name = "y"
              },
              {
                name = "x"
              }
            },
            argsDisplay = "y, x",
            description = "Returns the arc tangent of y/x (in radians), but uses the signs of both parameters to find the quadrant of the result. (It also handles correctly the case of x being zero.)",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.atan2",
            type = "function"
          },
          ceil = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the smallest integer larger than or equal to x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.ceil",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.cos",
            type = "function"
          },
          cosh = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the hyperbolic cosine of x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.cosh",
            type = "function"
          },
          deg = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the angle x (given in radians) in degrees.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.deg",
            type = "function"
          },
          exp = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the value ex.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.exp",
            type = "function"
          },
          floor = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the largest integer smaller than or equal to x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.floor",
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
            description = "Returns the remainder of the division of x by y that rounds the quotient towards zero.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.fmod",
            type = "function"
          },
          frexp = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns m and e such that x = m2e, e is an integer and the absolute value of m is in the range [0.5, 1) (or zero when x is zero).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.frexp",
            type = "function"
          },
          huge = {
            description = "The value HUGE_VAL, a value larger than or equal to any other numerical value.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.huge",
            type = "unknown"
          },
          ldexp = {
            args = {
              {
                name = "m"
              },
              {
                name = "e"
              }
            },
            argsDisplay = "m, e",
            description = "Returns m2e (e should be an integer).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.ldexp",
            type = "function"
          },
          log = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x [, base]",
            description = "Returns the logarithm of x in the given base. The default for base is e (so that the function returns the natural logarithm of x).",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-math.log",
            type = "function"
          },
          log10 = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the base-10 logarithm of x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.log10",
            type = "function"
          },
          max = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x, ···",
            description = "Returns the maximum value among its arguments.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.max",
            type = "function"
          },
          min = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x, ···",
            description = "Returns the minimum value among its arguments.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.min",
            type = "function"
          },
          modf = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns two numbers, the integral part of x and the fractional part of x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.modf",
            type = "function"
          },
          pi = {
            description = "The value of pi.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.pi",
            type = "number"
          },
          pow = {
            args = {
              {
                name = "x"
              },
              {
                name = "y"
              }
            },
            argsDisplay = "x, y",
            description = "Returns xy. (You can also use the expression x^y to compute this value.)",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.pow",
            type = "function"
          },
          rad = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the angle x (given in degrees) in radians.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.rad",
            type = "function"
          },
          random = {
            args = {},
            argsDisplay = "[m [, n]]",
            description = "This function is an interface to the simple pseudo-random generator function rand provided by ANSI C. (No guarantees can be given for its statistical properties.)",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.random",
            type = "function"
          },
          randomseed = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Sets x as the \"seed\" for the pseudo-random generator: equal seeds produce equal sequences of numbers.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.randomseed",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.sin",
            type = "function"
          },
          sinh = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the hyperbolic sine of x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.sinh",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.sqrt",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.tan",
            type = "function"
          },
          tanh = {
            args = {
              {
                name = "x"
              }
            },
            argsDisplay = "x",
            description = "Returns the hyperbolic tangent of x.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-math.tanh",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.6",
        type = "table"
      },
      module = {
        args = {
          {
            name = "name"
          }
        },
        argsDisplay = "name [, ···]",
        description = "Creates a module. If there is a table in package.loaded[name], this table is the module. Otherwise, if there is a global table t with the given name, this table is the module. Otherwise creates a new table t and sets it as the value of the global name and the value of package.loaded[name]. This function also initializes t._NAME with the given name, t._M with the module (t itself), and t._PACKAGE with the package name (the full module name minus last component; see below). Finally, module sets t as the new environment of the current function and the new value of package.loaded[name], so that require returns t.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-module",
        type = "function"
      },
      next = {
        args = {
          {
            name = "table"
          }
        },
        argsDisplay = "table [, index]",
        description = "Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. next returns the next index of the table and its associated value. When called with nil as its second argument, next returns an initial index and its associated value. When called with the last index, or with nil in an empty table, next returns nil. If the second argument is absent, then it is interpreted as nil. In particular, you can use next(t) to check whether a table is empty.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-next",
        type = "function"
      },
      os = {
        description = "This library is implemented through table os.",
        fields = {
          clock = {
            args = {},
            argsDisplay = "",
            description = "Returns an approximation of the amount in seconds of CPU time used by the program.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.clock",
            type = "function"
          },
          date = {
            args = {},
            argsDisplay = "[format [, time]]",
            description = "Returns a string or a table containing date and time, formatted according to the given string format.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.date",
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
            description = "Returns the number of seconds from time t1 to time t2. In POSIX, Windows, and some other systems, this value is exactly t2-t1.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.difftime",
            type = "function"
          },
          execute = {
            args = {},
            argsDisplay = "[command]",
            description = "This function is equivalent to the C function system. It passes command to be executed by an operating system shell. It returns a status code, which is system-dependent. If command is absent, then it returns nonzero if a shell is available and zero otherwise.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.execute",
            type = "function"
          },
          exit = {
            args = {},
            argsDisplay = "[code [, close]",
            description = "Calls the ISO C function exit to terminate the host program. If code is true, the returned status is EXIT_SUCCESS; if code is false, the returned status is EXIT_FAILURE; if code is a number, the returned status is this number. The default value for code is true.",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-os.exit",
            type = "function"
          },
          getenv = {
            args = {
              {
                name = "varname"
              }
            },
            argsDisplay = "varname",
            description = "Returns the value of the process environment variable varname, or nil if the variable is not defined.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.getenv",
            type = "function"
          },
          remove = {
            args = {
              {
                name = "filename"
              }
            },
            argsDisplay = "filename",
            description = "Deletes the file or directory with the given name. Directories must be empty to be removed. If this function fails, it returns nil, plus a string describing the error.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.remove",
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
            description = "Renames file or directory named oldname to newname. If this function fails, it returns nil, plus a string describing the error.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.rename",
            type = "function"
          },
          setlocale = {
            args = {
              {
                name = "locale"
              }
            },
            argsDisplay = "locale [, category]",
            description = "Sets the current locale of the program. locale is a string specifying a locale; category is an optional string describing which category to change: \"all\", \"collate\", \"ctype\", \"monetary\", \"numeric\", or \"time\"; the default category is \"all\". The function returns the name of the new locale, or nil if the request cannot be honored.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.setlocale",
            type = "function"
          },
          time = {
            args = {},
            argsDisplay = "[table]",
            description = "Returns the current time when called without arguments, or a time representing the date and time specified by the given table. This table must have fields year, month, and day, and may have fields hour, min, sec, and isdst (for a description of these fields, see the os.date function).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.time",
            type = "function"
          },
          tmpname = {
            args = {},
            argsDisplay = "",
            description = "Returns a string with a file name that can be used for a temporary file. The file must be explicitly opened before its use and explicitly removed when no longer needed.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-os.tmpname",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.8",
        type = "table"
      },
      package = {
        description = "The package library provides basic facilities for loading and building modules in Lua. It exports two of its functions directly in the global environment: require and module. Everything else is exported in a table package.",
        fields = {
          cpath = {
            description = "The path used by require to search for a C loader.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-package.cpath",
            type = "unknown"
          },
          loaded = {
            description = "A table used by require to control which modules are already loaded. When you require a module modname and package.loaded[modname] is not false, require simply returns the value stored there.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-package.loaded",
            type = "unknown"
          },
          loaders = {
            description = "A table used by require to control how to load modules.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-package.loaders",
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
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-package.loadlib",
            type = "function"
          },
          path = {
            description = "The path used by require to search for a Lua loader.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-package.path",
            type = "unknown"
          },
          preload = {
            description = "A table to store loaders for specific modules (see require).",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-package.preload",
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
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-package.searchpath",
            type = "function"
          },
          seeall = {
            args = {
              {
                name = "module"
              }
            },
            argsDisplay = "module",
            description = "Sets a metatable for module with its __index field referring to the global environment, so that this module inherits values from the global environment. To be used as an option to function module.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-package.seeall",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.3",
        type = "table"
      },
      pairs = {
        args = {
          {
            name = "t"
          }
        },
        argsDisplay = "t",
        description = "Returns three values: the next function, the table t, and nil, so that the construction",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-pairs",
        type = "function"
      },
      pcall = {
        args = {
          {
            name = "f"
          }
        },
        argsDisplay = "f [, arg1, ···]",
        description = "Calls function f with the given arguments in protected mode. This means that any error inside f is not propagated; instead, pcall catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, pcall also returns all results from the call, after this first result. In case of any error, pcall returns false plus the error message.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-pcall",
        type = "function"
      },
      print = {
        args = {},
        argsDisplay = "···",
        description = "Receives any number of arguments, and prints their values to stdout, using the tostring function to convert them to strings. print is not intended for formatted output, but only as a quick way to show a value, typically for debugging. For formatted output, use string.format.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-print",
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
        description = "Checks whether v1 is equal to v2, without invoking any metamethod. Returns a boolean.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-rawequal",
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
        description = "Gets the real value of table[index], without invoking any metamethod. table must be a table; index may be any value.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-rawget",
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
        description = "Sets the real value of table[index] to value, without invoking any metamethod. table must be a table, index any value different from nil, and value any Lua value.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-rawset",
        type = "function"
      },
      require = {
        args = {
          {
            name = "modname"
          }
        },
        argsDisplay = "modname",
        description = "Loads the given module. The function starts by looking into the package.loaded table to determine whether modname is already loaded. If it is, then require returns the value stored at package.loaded[modname]. Otherwise, it tries to find a loader for the module.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-require",
        type = "function"
      },
      select = {
        args = {
          {
            name = "index"
          }
        },
        argsDisplay = "index, ···",
        description = "If index is a number, returns all arguments after argument number index. Otherwise, index must be the string \"#\", and select returns the total number of extra arguments it received.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-select",
        type = "function"
      },
      setfenv = {
        args = {
          {
            name = "f"
          },
          {
            name = "table"
          }
        },
        argsDisplay = "f, table",
        description = "Sets the environment to be used by the given function. f can be a Lua function or a number that specifies the function at that stack level: Level 1 is the function calling setfenv. setfenv returns the given function.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-setfenv",
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
        description = "Sets the metatable for the given table. (You cannot change the metatable of other types from Lua, only from C.) If metatable is nil, removes the metatable of the given table. If the original metatable has a \"__metatable\" field, raises an error.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-setmetatable",
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
            description = "Returns the internal numerical codes of the characters s[i], s[i+1], ···, s[j]. The default value for i is 1; the default value for j is i.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.byte",
            type = "function"
          },
          char = {
            args = {},
            argsDisplay = "···",
            description = "Receives zero or more integers. Returns a string with length equal to the number of arguments, in which each character has the internal numerical code equal to its corresponding argument.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.char",
            type = "function"
          },
          dump = {
            args = {
              {
                name = "function"
              }
            },
            argsDisplay = "function [, strip]",
            description = "Returns a string containing a binary representation of the given function, so that a later loadstring on this string returns a copy of the function. function must be a Lua function without upvalues.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.dump",
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
            description = "Looks for the first match of pattern in the string s. If it finds a match, then find returns the indices of s where this occurrence starts and ends; otherwise, it returns nil. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative. A value of true as a fourth, optional argument plain turns off the pattern matching facilities, so the function does a plain \"find substring\" operation, with no characters in pattern being considered \"magic\". Note that if plain is given, then init must be given as well.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.find",
            type = "function"
          },
          format = {
            args = {
              {
                name = "formatstring"
              }
            },
            argsDisplay = "formatstring, ···",
            description = "Returns a formatted version of its variable number of arguments following the description given in its first argument (which must be a string). The format string follows the same rules as the ISO C function sprintf. The only differences are that the options/modifiers *, h, L, l, n, and p are not supported and that there is an extra option, q. The q option formats a string between double quotes, using escape sequences when necessary to ensure that it can safely be read back by the Lua interpreter. For instance, the call",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-string.format",
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
            argsDisplay = "s, pattern",
            description = "Returns an iterator function that, each time it is called, returns the next captures from pattern over string s. If pattern specifies no captures, then the whole match is produced in each call.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.gmatch",
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
            description = "Returns a copy of s in which all (or the first n, if given) occurrences of the pattern have been replaced by a replacement string specified by repl, which can be a string, a table, or a function. gsub also returns, as its second value, the total number of matches that occurred.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.gsub",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.len",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.lower",
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
            description = "Looks for the first match of pattern in the string s. If it finds one, then match returns the captures from the pattern; otherwise it returns nil. If pattern specifies no captures, then the whole match is returned. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.match",
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
            description = "Returns a string that is the concatenation of n copies of the string s separated by the string sep. The default value for sep is the empty string (that is, no separator).",
            link = "https://www.lua.org/manual/5.2/manual.html#pdf-string.rep",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.reverse",
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
            description = "Returns the substring of s that starts at i and continues until j; i and j can be negative. If j is absent, then it is assumed to be equal to -1 (which is the same as the string length). In particular, the call string.sub(s,1,j) returns a prefix of s with length j, and string.sub(s, -i) returns a suffix of s with length i.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.sub",
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
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-string.upper",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.4",
        type = "table"
      },
      table = {
        description = "This library provides generic functions for table manipulation. It provides all its functions inside the table table.",
        fields = {
          concat = {
            args = {
              {
                name = "table"
              }
            },
            argsDisplay = "table [, sep [, i [, j]]]",
            description = "Given an array where all elements are strings or numbers, returns table[i]..sep..table[i+1] ··· sep..table[j]. The default value for sep is the empty string, the default for i is 1, and the default for j is the length of the table. If i is greater than j, returns the empty string.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-table.concat",
            type = "function"
          },
          insert = {
            args = {
              {
                name = "table"
              }
            },
            argsDisplay = "table, [pos,] value",
            description = "Inserts element value at position pos in table, shifting up other elements to open space, if necessary. The default value for pos is n+1, where n is the length of the table (see §2.5.5), so that a call table.insert(t,x) inserts x at the end of table t.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-table.insert",
            type = "function"
          },
          maxn = {
            args = {
              {
                name = "table"
              }
            },
            argsDisplay = "table",
            description = "Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices. (To do its job this function does a linear traversal of the whole table.)",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-table.maxn",
            type = "function"
          },
          remove = {
            args = {
              {
                name = "table"
              }
            },
            argsDisplay = "table [, pos]",
            description = "Removes from table the element at position pos, shifting down other elements to close the space, if necessary. Returns the value of the removed element. The default value for pos is n, where n is the length of the table, so that a call table.remove(t) removes the last element of table t.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-table.remove",
            type = "function"
          },
          sort = {
            args = {
              {
                name = "table"
              }
            },
            argsDisplay = "table [, comp]",
            description = "Sorts table elements in a given order, in-place, from table[1] to table[n], where n is the length of the table. If comp is given, then it must be a function that receives two table elements, and returns true when the first is less than the second (so that not comp(a[i+1],a[i]) will be true after the sort). If comp is not given, then the standard Lua operator < is used instead.",
            link = "https://www.lua.org/manual/5.1/manual.html#pdf-table.sort",
            type = "function"
          }
        },
        link = "https://www.lua.org/manual/5.1/manual.html#5.5",
        type = "table"
      },
      tonumber = {
        args = {
          {
            name = "e"
          }
        },
        argsDisplay = "e [, base]",
        description = "Tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then tonumber returns this number; otherwise, it returns nil.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-tonumber",
        type = "function"
      },
      tostring = {
        args = {
          {
            name = "e"
          }
        },
        argsDisplay = "e",
        description = "Receives an argument of any type and converts it to a string in a reasonable format. For complete control of how numbers are converted, use string.format.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-tostring",
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
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-type",
        type = "function"
      },
      unpack = {
        args = {
          {
            name = "list"
          }
        },
        argsDisplay = "list [, i [, j]]",
        description = "Returns the elements from the given table. This function is equivalent to  return list[i], list[i+1], ···, list[j]",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-unpack",
        type = "function"
      },
      xpcall = {
        args = {
          {
            name = "f"
          },
          {
            name = "err"
          }
        },
        argsDisplay = "f, err [, arg1, ···]",
        description = "This function is similar to pcall, except that you can set a new error handler.",
        link = "https://www.lua.org/manual/5.1/manual.html#pdf-xpcall",
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
                link = "https://www.lua.org/manual/5.1/manual.html#pdf-file:close",
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
                link = "https://www.lua.org/manual/5.1/manual.html#pdf-file:flush",
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
                description = "Returns an iterator function that, each time it is called, reads the file according to the given formats. When no format is given, uses \"*l\" as a default. As an example, the construction",
                link = "https://www.lua.org/manual/5.2/manual.html#pdf-file:lines",
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
                description = "Reads the file file, according to the given formats, which specify what to read. For each format, the function returns a string (or a number) with the characters read, or nil if it cannot read data with the specified format. When called without formats, it uses a default format that reads the entire next line (see below).",
                link = "https://www.lua.org/manual/5.1/manual.html#pdf-file:read",
                type = "function"
              },
              seek = {
                args = {
                  {
                    name = "self"
                  }
                },
                argsDisplay = "self, [whence] [, offset]",
                argsDisplayOmitSelf = "[whence] [, offset]",
                description = "Sets and gets the file position, measured from the beginning of the file, to the position given by offset plus a base specified by the string whence, as follows:",
                link = "https://www.lua.org/manual/5.1/manual.html#pdf-file:seek",
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
                description = "Sets the buffering mode for an output file. There are three available modes:",
                link = "https://www.lua.org/manual/5.1/manual.html#pdf-file:setvbuf",
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
                description = "Writes the value of each of its arguments to the file. The arguments must be strings or numbers. To write other values, use tostring or string.format before write.",
                link = "https://www.lua.org/manual/5.1/manual.html#pdf-file:write",
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