local _={}
_[438]={name="self"}
_[437]={name="mode"}
_[436]={name="self"}
_[435]={name="self"}
_[434]={name="self"}
_[433]={name="self"}
_[432]={name="self"}
_[431]={name="self"}
_[430]={_[438]}
_[429]={_[436],_[437]}
_[428]={_[435]}
_[427]={_[434]}
_[426]={_[433]}
_[425]={_[432]}
_[424]={_[431]}
_[423]={description="Closes file. Note that files are automatically closed when their handles are garbage collected, but that takes an unpredictable amount of time to happen.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[430],link="https://www.lua.org/manual/5.3/manual.html#pdf-file:close"}
_[422]={description="Sets the buffering mode for an output file. There are three available modes:",type="function",argsDisplayOmitSelf="mode [, size]",argsDisplay="self, mode [, size]",args=_[429],link="https://www.lua.org/manual/5.3/manual.html#pdf-file:setvbuf"}
_[421]={description="Returns an iterator function that, each time it is called, reads the file according to the given formats. When no format is given, uses \"l\" as a default. As an example, the construction",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[428],link="https://www.lua.org/manual/5.3/manual.html#pdf-file:lines"}
_[420]={description="Writes the value of each of its arguments to file. The arguments must be strings or numbers.",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[427],link="https://www.lua.org/manual/5.3/manual.html#pdf-file:write"}
_[419]={description="Sets and gets the file position, measured from the beginning of the file, to the position given by offset plus a base specified by the string whence, as follows:",type="function",argsDisplayOmitSelf="[whence [, offset]]",argsDisplay="self, [whence [, offset]]",args=_[426],link="https://www.lua.org/manual/5.3/manual.html#pdf-file:seek"}
_[418]={description="Reads the file file, according to the given formats, which specify what to read. For each format, the function returns a string or a number with the characters read, or nil if it cannot read data with the specified format. (In this latter case, the function does not read subsequent formats.) When called without formats, it uses a default format that reads the next line (see below).",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[425],link="https://www.lua.org/manual/5.3/manual.html#pdf-file:read"}
_[417]={description="Saves any written data to file.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[424],link="https://www.lua.org/manual/5.3/manual.html#pdf-file:flush"}
_[416]={name="x"}
_[415]={name="x"}
_[414]={name="x"}
_[413]={name="x"}
_[412]={name="x"}
_[411]={name="x"}
_[410]={name="x"}
_[409]={name="x"}
_[408]={name="x"}
_[407]={name="x"}
_[406]={name="x"}
_[405]={name="x"}
_[404]={name="x"}
_[403]={name="y"}
_[402]={name="x"}
_[401]={name="x"}
_[400]={name="n"}
_[399]={name="m"}
_[398]={name="x"}
_[397]={name="x"}
_[396]={name="x"}
_[395]={name="y"}
_[394]={name="x"}
_[393]={name="x"}
_[392]={name="locale"}
_[391]={name="varname"}
_[390]={name="newname"}
_[389]={name="oldname"}
_[388]={name="filename"}
_[387]={name="t1"}
_[386]={name="t2"}
_[385]={name="s"}
_[384]={name="s"}
_[383]={name="s"}
_[382]={name="n"}
_[381]={name="s"}
_[380]={name="table"}
_[379]={name="value"}
_[378]={name="n"}
_[377]={name="f"}
_[376]={name="u"}
_[375]={name="value"}
_[374]={name="udata"}
_[373]={name="value"}
_[372]={name="up"}
_[371]={name="f"}
_[370]={name="up"}
_[369]={name="f"}
_[368]={name="n2"}
_[367]={name="f2"}
_[366]={name="n1"}
_[365]={name="f1"}
_[364]={name="value"}
_[363]={name="function"}
_[362]={name="s"}
_[361]={name="i"}
_[360]={name="s"}
_[359]={name="s"}
_[358]={name="fmt"}
_[357]={name="pattern"}
_[356]={name="s"}
_[355]={name="fmt"}
_[354]={name="v2"}
_[353]={name="v1"}
_[352]={name="fmt"}
_[351]={name="n"}
_[350]={name="s"}
_[349]={name="s"}
_[348]={name="formatstring"}
_[347]={name="s"}
_[346]={name="s"}
_[345]={name="repl"}
_[344]={name="pattern"}
_[343]={name="s"}
_[342]={name="pattern"}
_[341]={name="s"}
_[340]={name="pattern"}
_[339]={name="s"}
_[338]={name="s"}
_[337]={name="obj"}
_[336]={type="ref",name="file"}
_[335]={name="prog"}
_[334]={type="ref",name="file"}
_[333]={name="filename"}
_[332]={type="ref",name="file"}
_[331]={name="funcname"}
_[330]={name="libname"}
_[329]={name="path"}
_[328]={name="name"}
_[327]={name="co"}
_[326]={name="f"}
_[325]={name="co"}
_[324]={name="f"}
_[323]={name="list"}
_[322]={name="list"}
_[321]={name="list"}
_[320]={name="list"}
_[319]={name="list"}
_[318]={name="t"}
_[317]={name="e"}
_[316]={name="f"}
_[315]={name="a1"}
_[314]={flush=_[417],read=_[418],seek=_[419],write=_[420],lines=_[421],setvbuf=_[422],close=_[423]}
_[313]={_[416]}
_[312]={_[415]}
_[311]={_[414]}
_[310]={_[413]}
_[309]={_[412]}
_[308]={_[411]}
_[307]={_[410]}
_[306]={_[409]}
_[305]={_[408]}
_[304]={_[407]}
_[303]={_[406]}
_[302]={_[405]}
_[301]={_[404]}
_[300]={_[403]}
_[299]={_[402]}
_[298]={_[401]}
_[297]={}
_[296]={_[399],_[400]}
_[295]={_[398]}
_[294]={_[397]}
_[293]={_[396]}
_[292]={_[394],_[395]}
_[291]={_[393]}
_[290]={}
_[289]={_[392]}
_[288]={}
_[287]={}
_[286]={}
_[285]={_[391]}
_[284]={_[389],_[390]}
_[283]={_[388]}
_[282]={}
_[281]={_[386],_[387]}
_[280]={}
_[279]={_[385]}
_[278]={_[384]}
_[277]={_[383]}
_[276]={_[381],_[382]}
_[275]={}
_[274]={}
_[273]={}
_[272]={}
_[271]={}
_[270]={}
_[269]={}
_[268]={}
_[267]={_[379],_[380]}
_[266]={_[377],_[378]}
_[265]={_[376]}
_[264]={_[374],_[375]}
_[263]={}
_[262]={_[371],_[372],_[373]}
_[261]={_[369],_[370]}
_[260]={_[365],_[366],_[367],_[368]}
_[259]={_[364]}
_[258]={_[363]}
_[257]={_[362]}
_[256]={_[360],_[361]}
_[255]={_[358],_[359]}
_[254]={_[356],_[357]}
_[253]={_[355]}
_[252]={_[352],_[353],_[354]}
_[251]={_[350],_[351]}
_[250]={_[349]}
_[249]={}
_[248]={_[348]}
_[247]={_[347]}
_[246]={_[346]}
_[245]={_[343],_[344],_[345]}
_[244]={_[341],_[342]}
_[243]={_[339],_[340]}
_[242]={_[338]}
_[241]={}
_[240]={}
_[239]={}
_[238]={}
_[237]={_[337]}
_[236]={}
_[235]={}
_[234]={}
_[233]={_[336]}
_[232]={_[335]}
_[231]={_[334]}
_[230]={}
_[229]={_[333]}
_[228]={_[332]}
_[227]={_[330],_[331]}
_[226]={_[328],_[329]}
_[225]={_[327]}
_[224]={_[326]}
_[223]={_[325]}
_[222]={}
_[221]={}
_[220]={_[324]}
_[219]={}
_[218]={}
_[217]={_[323]}
_[216]={_[322]}
_[215]={_[321]}
_[214]={_[320]}
_[213]={_[319]}
_[212]={_[315],_[316],_[317],_[318]}
_[211]={type="table",fields=_[314]}
_[210]={name="metatable"}
_[209]={name="table"}
_[208]={name="index"}
_[207]={description="Returns the cosine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[313],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.cos"}
_[206]={description="Converts the angle x from radians to degrees.",type="function",argsDisplay="x",args=_[312],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.deg"}
_[205]={description="Returns the smallest integral value larger than or equal to x.",type="function",argsDisplay="x",args=_[311],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.ceil"}
_[204]={description="Returns the logarithm of x in the given base. The default for base is e (so that the function returns the natural logarithm of x).",type="function",argsDisplay="x [, base]",args=_[310],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.log"}
_[203]={description="Returns the argument with the maximum value, according to the Lua operator <. (integer/float)",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[309],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.max"}
_[202]={description="Returns the integral part of x and the fractional part of x. Its second result is always a float.",type="function",argsDisplay="x",args=_[308],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.modf"}
_[201]={link="https://www.lua.org/manual/5.3/manual.html#pdf-math.pi",type="number",description="The value of \207\128."}
_[200]={link="https://www.lua.org/manual/5.3/manual.html#pdf-math.huge",type="unknown",description="The float value HUGE_VAL, a value larger than any other numeric value."}
_[199]={description="Converts the angle x from degrees to radians.",type="function",argsDisplay="x",args=_[307],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.rad"}
_[198]={description="Sets x as the \"seed\" for the pseudo-random generator: equal seeds produce equal sequences of numbers.",type="function",argsDisplay="x",args=_[306],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.randomseed"}
_[197]={description="Returns the arc sine of x (in radians).",type="function",argsDisplay="x",args=_[305],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.asin"}
_[196]={description="Returns the square root of x. (You can also use the expression x^0.5 to compute this value.)",type="function",argsDisplay="x",args=_[304],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.sqrt"}
_[195]={description="Returns the tangent of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[303],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.tan"}
_[194]={description="Returns the value ex (where e is the base of natural logarithms).",type="function",argsDisplay="x",args=_[302],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.exp"}
_[193]={description="Returns the arc cosine of x (in radians).",type="function",argsDisplay="x",args=_[301],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.acos"}
_[192]={description="Returns the arc tangent of y/x (in radians), but uses the signs of both parameters to find the quadrant of the result. (It also handles correctly the case of x being zero.)",type="function",argsDisplay="y [, x]",args=_[300],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.atan"}
_[191]={description="If the value x is convertible to an integer, returns that integer. Otherwise, returns nil.",type="function",argsDisplay="x",args=_[299],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.tointeger"}
_[190]={description="Returns \"integer\" if x is an integer, \"float\" if it is a float, or nil if x is not a number.",type="function",argsDisplay="x",args=_[298],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.type"}
_[189]={description="When called without arguments, returns a pseudo-random float with uniform distribution in the range [0,1). When called with two integers m and n, math.random returns a pseudo-random integer with uniform distribution in the range [m, n]. (The value n-m cannot be negative and must fit in a Lua integer.) The call math.random(n) is equivalent to math.random(1,n).",type="function",argsDisplay="[m [, n]]",args=_[297],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.random"}
_[188]={link="https://www.lua.org/manual/5.3/manual.html#pdf-math.maxinteger",type="unknown",description="An integer with the maximum value for an integer."}
_[187]={description="Returns a boolean, true if integer m is below integer n when they are compared as unsigned integers.",type="function",argsDisplay="m, n",args=_[296],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.ult"}
_[186]={description="Returns the largest integral value smaller than or equal to x.",type="function",argsDisplay="x",args=_[295],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.floor"}
_[185]={description="Returns the sine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[294],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.sin"}
_[184]={description="Returns the absolute value of x. (integer/float)",type="function",argsDisplay="x",args=_[293],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.abs"}
_[183]={description="Returns the remainder of the division of x by y that rounds the quotient towards zero. (integer/float)",type="function",argsDisplay="x, y",args=_[292],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.fmod"}
_[182]={link="https://www.lua.org/manual/5.3/manual.html#pdf-math.mininteger",type="unknown",description="An integer with the minimum value for an integer."}
_[181]={description="Returns the argument with the minimum value, according to the Lua operator <. (integer/float)",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[291],link="https://www.lua.org/manual/5.3/manual.html#pdf-math.min"}
_[180]={description="Returns an approximation of the amount in seconds of CPU time used by the program.",type="function",argsDisplay="",args=_[290],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.clock"}
_[179]={description="Sets the current locale of the program. locale is a system-dependent string specifying a locale; category is an optional string describing which category to change: \"all\", \"collate\", \"ctype\", \"monetary\", \"numeric\", or \"time\"; the default category is \"all\". The function returns the name of the new locale, or nil if the request cannot be honored.",type="function",argsDisplay="locale [, category]",args=_[289],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.setlocale"}
_[178]={description="Returns a string with a file name that can be used for a temporary file. The file must be explicitly opened before its use and explicitly removed when no longer needed.",type="function",argsDisplay="",args=_[288],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.tmpname"}
_[177]={description="Calls the ISO C function exit to terminate the host program. If code is true, the returned status is EXIT_SUCCESS; if code is false, the returned status is EXIT_FAILURE; if code is a number, the returned status is this number. The default value for code is true.",type="function",argsDisplay="[code [, close]]",args=_[287],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.exit"}
_[176]={description="Returns the current time when called without arguments, or a time representing the local date and time specified by the given table. This table must have fields year, month, and day, and may have fields hour (default is 12), min (default is 0), sec (default is 0), and isdst (default is nil). Other fields are ignored. For a description of these fields, see the os.date function.",type="function",argsDisplay="[table]",args=_[286],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.time"}
_[175]={description="Returns the value of the process environment variable varname, or nil if the variable is not defined.",type="function",argsDisplay="varname",args=_[285],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.getenv"}
_[174]={description="Renames file or directory named oldname to newname. If this function fails, it returns nil, plus a string describing the error and the error code.",type="function",argsDisplay="oldname, newname",args=_[284],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.rename"}
_[173]={description="Deletes the file (or empty directory, on POSIX systems) with the given name. If this function fails, it returns nil, plus a string describing the error and the error code.",type="function",argsDisplay="filename",args=_[283],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.remove"}
_[172]={description="Returns a string or a table containing date and time, formatted according to the given string format.",type="function",argsDisplay="[format [, time]]",args=_[282],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.date"}
_[171]={description="Returns the difference, in seconds, from time t1 to time t2 (where the times are values returned by os.time). In POSIX, Windows, and some other systems, this value is exactly t2-t1.",type="function",argsDisplay="t2, t1",args=_[281],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.difftime"}
_[170]={description="This function is equivalent to the ISO C function system. It passes command to be executed by an operating system shell. Its first result is true if the command terminated successfully, or nil otherwise. After this first result the function returns a string plus a number, as follows:",type="function",argsDisplay="[command]",args=_[280],link="https://www.lua.org/manual/5.3/manual.html#pdf-os.execute"}
_[169]={name="index"}
_[168]={name="table"}
_[167]={name="chunk"}
_[166]={link="https://www.lua.org/manual/5.3/manual.html#pdf-utf8.charpattern",type="unknown",description="The pattern (a string, not a function) \"[\\0-\\x7F\\xC2-\\xF4][\\x80-\\xBF]*\" (see \194\1676.4.1), which matches exactly one UTF-8 byte sequence, assuming that the subject is a valid UTF-8 string."}
_[165]={description="Returns the number of UTF-8 characters in string s that start between positions i and j (both inclusive). The default for i is 1 and for j is -1. If it finds any invalid byte sequence, returns a false value plus the position of the first invalid byte.",type="function",argsDisplay="s [, i [, j]]",args=_[279],link="https://www.lua.org/manual/5.3/manual.html#pdf-utf8.len"}
_[164]={description="Returns values so that the construction",type="function",argsDisplay="s",args=_[278],link="https://www.lua.org/manual/5.3/manual.html#pdf-utf8.codes"}
_[163]={description="Returns the codepoints (as integers) from all characters in s that start between byte position i and j (both included). The default for i is 1 and for j is i. It raises an error if it meets any invalid byte sequence.",type="function",argsDisplay="s [, i [, j]]",args=_[277],link="https://www.lua.org/manual/5.3/manual.html#pdf-utf8.codepoint"}
_[162]={description="Returns the position (in bytes) where the encoding of the n-th character of s (counting from position i) starts. A negative n gets characters before position i. The default for i is 1 when n is non-negative and #s + 1 otherwise, so that utf8.offset(s, -n) gets the offset of the n-th character from the end of the string. If the specified character is neither in the subject nor right after its end, the function returns nil.",type="function",argsDisplay="s, n [, i]",args=_[276],link="https://www.lua.org/manual/5.3/manual.html#pdf-utf8.offset"}
_[161]={description="Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence and returns a string with the concatenation of all these sequences.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[275],link="https://www.lua.org/manual/5.3/manual.html#pdf-utf8.char"}
_[160]={name="v"}
_[159]={name="object"}
_[158]={name="table"}
_[157]={name="t"}
_[156]={name="v"}
_[155]={description="Sets the given function as a hook. The string mask and the number count describe when the hook will be called. The string mask may have any combination of the following characters, with the given meaning:",type="function",argsDisplay="[thread,] hook, mask [, count]",args=_[274],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.sethook"}
_[154]={description="Returns the registry table (see \194\1674.5).",type="function",argsDisplay="",args=_[273],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.getregistry"}
_[153]={description="Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.",type="function",argsDisplay="",args=_[272],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.debug"}
_[152]={description="This function returns the name and the value of the local variable with index local of the function at level f of the stack. This function accesses not only explicit local variables, but also parameters, temporaries, etc.",type="function",argsDisplay="[thread,] f, local",args=_[271],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.getlocal"}
_[151]={description="Returns the current hook settings of the thread, as three values: the current hook function, the current hook mask, and the current hook count (as set by the debug.sethook function).",type="function",argsDisplay="[thread]",args=_[270],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.gethook"}
_[150]={description="Returns a table with information about a function. You can give the function directly or you can give a number as the value of f, which means the function running at level f of the call stack of the given thread: level 0 is the current function (getinfo itself); level 1 is the function that called getinfo (except for tail calls, which do not count on the stack); and so on. If f is a number larger than the number of active functions, then getinfo returns nil.",type="function",argsDisplay="[thread,] f [, what]",args=_[269],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.getinfo"}
_[149]={description="This function assigns the value value to the local variable with index local of the function at level level of the stack. The function returns nil if there is no local variable with the given index, and raises an error when called with a level out of range. (You can call getinfo to check whether the level is valid.) Otherwise, it returns the name of the local variable.",type="function",argsDisplay="[thread,] level, local, value",args=_[268],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.setlocal"}
_[148]={description="Sets the metatable for the given value to the given table (which can be nil). Returns value.",type="function",argsDisplay="value, table",args=_[267],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.setmetatable"}
_[147]={description="Returns a unique identifier (as a light userdata) for the upvalue numbered n from the given function.",type="function",argsDisplay="f, n",args=_[266],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.upvalueid"}
_[146]={description="Returns the Lua value associated to u. If u is not a userdata, returns nil.",type="function",argsDisplay="u",args=_[265],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.getuservalue"}
_[145]={description="Sets the given value as the Lua value associated to the given udata. udata must be a full userdata.",type="function",argsDisplay="udata, value",args=_[264],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.setuservalue"}
_[144]={description="If message is present but is neither a string nor nil, this function returns message without further processing. Otherwise, it returns a string with a traceback of the call stack. The optional message string is appended at the beginning of the traceback. An optional level number tells at which level to start the traceback (default is 1, the function calling traceback).",type="function",argsDisplay="[thread,] [message [, level]]",args=_[263],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.traceback"}
_[143]={description="This function assigns the value value to the upvalue with index up of the function f. The function returns nil if there is no upvalue with the given index. Otherwise, it returns the name of the upvalue.",type="function",argsDisplay="f, up, value",args=_[262],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.setupvalue"}
_[142]={description="This function returns the name and the value of the upvalue with index up of the function f. The function returns nil if there is no upvalue with the given index.",type="function",argsDisplay="f, up",args=_[261],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.getupvalue"}
_[141]={description="Make the n1-th upvalue of the Lua closure f1 refer to the n2-th upvalue of the Lua closure f2.",type="function",argsDisplay="f1, n1, f2, n2",args=_[260],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.upvaluejoin"}
_[140]={description="Returns the metatable of the given value or nil if it does not have a metatable.",type="function",argsDisplay="value",args=_[259],link="https://www.lua.org/manual/5.3/manual.html#pdf-debug.getmetatable"}
_[139]={name="message"}
_[138]={description="Returns a string containing a binary representation (a binary chunk) of the given function, so that a later load on this string returns a copy of the function (but with new upvalues). If strip is a true value, the binary representation may not include all debug information about the function, to save space.",type="function",argsDisplay="function [, strip]",args=_[258],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.dump"}
_[137]={description="Receives a string and returns a copy of this string with all uppercase letters changed to lowercase. All other characters are left unchanged. The definition of what an uppercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[257],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.lower"}
_[136]={description="Returns the substring of s that starts at i and continues until j; i and j can be negative. If j is absent, then it is assumed to be equal to -1 (which is the same as the string length). In particular, the call string.sub(s,1,j) returns a prefix of s with length j, and string.sub(s, -i) returns a suffix of s with length i.",type="function",argsDisplay="s, i [, j]",args=_[256],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.sub"}
_[135]={description="Returns the values packed in string s (see string.pack) according to the format string fmt (see \194\1676.4.2). An optional pos marks where to start reading in s (default is 1). After the read values, this function also returns the index of the first unread byte in s.",type="function",argsDisplay="fmt, s [, pos]",args=_[255],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.unpack"}
_[134]={description="Looks for the first match of pattern (see \194\1676.4.1) in the string s. If it finds one, then match returns the captures from the pattern; otherwise it returns nil. If pattern specifies no captures, then the whole match is returned. A third, optional numeric argument init specifies where to start the search; its default value is 1 and can be negative.",type="function",argsDisplay="s, pattern [, init]",args=_[254],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.match"}
_[133]={description="Returns the size of a string resulting from string.pack with the given format. The format string cannot have the variable-length options 's' or 'z' (see \194\1676.4.2).",type="function",argsDisplay="fmt",args=_[253],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.packsize"}
_[132]={description="Returns a binary string containing the values v1, v2, etc. packed (that is, serialized in binary form) according to the format string fmt (see \194\1676.4.2).",type="function",argsDisplay="fmt, v1, v2, \194\183\194\183\194\183",args=_[252],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.pack"}
_[131]={description="Returns a string that is the concatenation of n copies of the string s separated by the string sep. The default value for sep is the empty string (that is, no separator). Returns the empty string if n is not positive.",type="function",argsDisplay="s, n [, sep]",args=_[251],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.rep"}
_[130]={description="Returns a string that is the string s reversed.",type="function",argsDisplay="s",args=_[250],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.reverse"}
_[129]={description="Receives zero or more integers. Returns a string with length equal to the number of arguments, in which each character has the internal numeric code equal to its corresponding argument.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[249],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.char"}
_[128]={description="Returns a formatted version of its variable number of arguments following the description given in its first argument (which must be a string). The format string follows the same rules as the ISO C function sprintf. The only differences are that the options/modifiers *, h, L, l, n, and p are not supported and that there is an extra option, q.",type="function",argsDisplay="formatstring, \194\183\194\183\194\183",args=_[248],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.format"}
_[127]={description="Receives a string and returns a copy of this string with all lowercase letters changed to uppercase. All other characters are left unchanged. The definition of what a lowercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[247],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.upper"}
_[126]={description="Receives a string and returns its length. The empty string \"\" has length 0. Embedded zeros are counted, so \"a\\000bc\\000\" has length 5.",type="function",argsDisplay="s",args=_[246],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.len"}
_[125]={description="Returns a copy of s in which all (or the first n, if given) occurrences of the pattern (see \194\1676.4.1) have been replaced by a replacement string specified by repl, which can be a string, a table, or a function. gsub also returns, as its second value, the total number of matches that occurred. The name gsub comes from Global SUBstitution.",type="function",argsDisplay="s, pattern, repl [, n]",args=_[245],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.gsub"}
_[124]={description="Returns an iterator function that, each time it is called, returns the next captures from pattern (see \194\1676.4.1) over the string s. If pattern specifies no captures, then the whole match is produced in each call.",type="function",argsDisplay="s, pattern",args=_[244],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.gmatch"}
_[123]={description="Looks for the first match of pattern (see \194\1676.4.1) in the string s. If it finds a match, then find returns the indices of s where this occurrence starts and ends; otherwise, it returns nil. A third, optional numeric argument init specifies where to start the search; its default value is 1 and can be negative. A value of true as a fourth, optional argument plain turns off the pattern matching facilities, so the function does a plain \"find substring\" operation, with no characters in pattern being considered magic. Note that if plain is given, then init must be given as well.",type="function",argsDisplay="s, pattern [, init [, plain]]",args=_[243],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.find"}
_[122]={description="Returns the internal numeric codes of the characters s[i], s[i+1], ..., s[j]. The default value for i is 1; the default value for j is i. These indices are corrected following the same rules of function string.sub.",type="function",argsDisplay="s [, i [, j]]",args=_[242],link="https://www.lua.org/manual/5.3/manual.html#pdf-string.byte"}
_[121]={name="v"}
_[120]={description="Similar to io.input, but operates over the default output file.",type="function",argsDisplay="[file]",args=_[241],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.output"}
_[119]={type="ref",name="file"}
_[118]={description="Opens the given file name in read mode and returns an iterator function that works like file:lines(\194\183\194\183\194\183) over the opened file. When the iterator function detects the end of file, it returns no values (to finish the loop) and automatically closes the file.",type="function",argsDisplay="[filename, \194\183\194\183\194\183]",args=_[240],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.lines"}
_[117]={type="ref",name="file"}
_[116]={description="Equivalent to io.output():flush().",type="function",argsDisplay="",args=_[239],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.flush"}
_[115]={description="Equivalent to io.input():read(\194\183\194\183\194\183).",type="function",argsDisplay="\194\183\194\183\194\183",args=_[238],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.read"}
_[114]={description="Checks whether obj is a valid file handle. Returns the string \"file\" if obj is an open file handle, \"closed file\" if obj is a closed file handle, or nil if obj is not a file handle.",type="function",argsDisplay="obj",args=_[237],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.type"}
_[113]={type="ref",name="file"}
_[112]={description="Equivalent to file:close(). Without a file, closes the default output file.",type="function",argsDisplay="[file]",args=_[236],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.close"}
_[111]={description="Equivalent to io.output():write(\194\183\194\183\194\183).",type="function",argsDisplay="\194\183\194\183\194\183",args=_[235],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.write"}
_[110]={description="In case of success, returns a handle for a temporary file. This file is opened in update mode and it is automatically removed when the program ends.",type="function",argsDisplay="",returnTypes=_[233],args=_[234],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.tmpfile"}
_[109]={description="This function is system dependent and is not available on all platforms.",type="function",argsDisplay="prog [, mode]",returnTypes=_[231],args=_[232],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.popen"}
_[108]={description="When called with a file name, it opens the named file (in text mode), and sets its handle as the default input file. When called with a file handle, it simply sets this file handle as the default input file. When called without parameters, it returns the current default input file.",type="function",argsDisplay="[file]",args=_[230],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.input"}
_[107]={description="This function opens a file, in the mode specified in the string mode. In case of success, it returns a new file handle.",type="function",argsDisplay="filename [, mode]",returnTypes=_[228],args=_[229],link="https://www.lua.org/manual/5.3/manual.html#pdf-io.open"}
_[106]={description="Dynamically links the host program with the C library libname.",type="function",argsDisplay="libname, funcname",args=_[227],link="https://www.lua.org/manual/5.3/manual.html#pdf-package.loadlib"}
_[105]={link="https://www.lua.org/manual/5.3/manual.html#pdf-package.path",type="unknown",description="The path used by require to search for a Lua loader."}
_[104]={link="https://www.lua.org/manual/5.3/manual.html#pdf-package.preload",type="unknown",description="A table to store loaders for specific modules (see require)."}
_[103]={description="Searches for the given name in the given path.",type="function",argsDisplay="name, path [, sep [, rep]]",args=_[226],link="https://www.lua.org/manual/5.3/manual.html#pdf-package.searchpath"}
_[102]={link="https://www.lua.org/manual/5.3/manual.html#pdf-package.loaded",type="unknown",description="A table used by require to control which modules are already loaded. When you require a module modname and package.loaded[modname] is not false, require simply returns the value stored there."}
_[101]={link="https://www.lua.org/manual/5.3/manual.html#pdf-package.config",type="unknown",description="A string describing some compile-time configurations for packages. This string is a sequence of lines:"}
_[100]={link="https://www.lua.org/manual/5.3/manual.html#pdf-package.searchers",type="unknown",description="A table used by require to control how to load modules."}
_[99]={link="https://www.lua.org/manual/5.3/manual.html#pdf-package.cpath",type="unknown",description="The path used by require to search for a C loader."}
_[98]={name="t"}
_[97]={name="modname"}
_[96]={name="v2"}
_[95]={name="v1"}
_[94]={name="f"}
_[93]={name="msgh"}
_[92]={name="f"}
_[91]={description="Starts or continues the execution of coroutine co. The first time you resume a coroutine, it starts running its body. The values val1, ... are passed as the arguments to the body function. If the coroutine has yielded, resume restarts it; the values val1, ... are passed as the results from the yield.",type="function",argsDisplay="co [, val1, \194\183\194\183\194\183]",args=_[225],link="https://www.lua.org/manual/5.3/manual.html#pdf-coroutine.resume"}
_[90]={description="Creates a new coroutine, with body f. f must be a function. Returns a function that resumes the coroutine each time it is called. Any arguments passed to the function behave as the extra arguments to resume. Returns the same values returned by resume, except the first boolean. In case of error, propagates the error.",type="function",argsDisplay="f",args=_[224],link="https://www.lua.org/manual/5.3/manual.html#pdf-coroutine.wrap"}
_[89]={description="Returns the status of coroutine co, as a string: \"running\", if the coroutine is running (that is, it called status); \"suspended\", if the coroutine is suspended in a call to yield, or if it has not started running yet; \"normal\" if the coroutine is active but not running (that is, it has resumed another coroutine); and \"dead\" if the coroutine has finished its body function, or if it has stopped with an error.",type="function",argsDisplay="co",args=_[223],link="https://www.lua.org/manual/5.3/manual.html#pdf-coroutine.status"}
_[88]={description="Suspends the execution of the calling coroutine. Any arguments to yield are passed as extra results to resume.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[222],link="https://www.lua.org/manual/5.3/manual.html#pdf-coroutine.yield"}
_[87]={description="Returns true when the running coroutine can yield.",type="function",argsDisplay="",args=_[221],link="https://www.lua.org/manual/5.3/manual.html#pdf-coroutine.isyieldable"}
_[86]={description="Creates a new coroutine, with body f. f must be a function. Returns this new coroutine, an object with type \"thread\".",type="function",argsDisplay="f",args=_[220],link="https://www.lua.org/manual/5.3/manual.html#pdf-coroutine.create"}
_[85]={description="Returns the running coroutine plus a boolean, true when the running coroutine is the main one.",type="function",argsDisplay="",args=_[219],link="https://www.lua.org/manual/5.3/manual.html#pdf-coroutine.running"}
_[84]={name="v"}
_[83]={name="e"}
_[82]={name="value"}
_[81]={name="index"}
_[80]={name="table"}
_[79]={description="Returns a new table with all parameters stored into keys 1, 2, etc. and with a field \"n\" with the total number of parameters. Note that the resulting table may not be a sequence.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[218],link="https://www.lua.org/manual/5.3/manual.html#pdf-table.pack"}
_[78]={description="Removes from list the element at position pos, returning the value of the removed element. When pos is an integer between 1 and #list, it shifts down the elements list[pos+1], list[pos+2], \194\183\194\183\194\183, list[#list] and erases element list[#list]; The index pos can also be 0 when #list is 0, or #list + 1; in those cases, the function erases the element list[pos].",type="function",argsDisplay="list [, pos]",args=_[217],link="https://www.lua.org/manual/5.3/manual.html#pdf-table.remove"}
_[77]={description="Returns the elements from the given list. This function is equivalent to",type="function",argsDisplay="list [, i [, j]]",args=_[216],link="https://www.lua.org/manual/5.3/manual.html#pdf-table.unpack"}
_[76]={description="Inserts element value at position pos in list, shifting up the elements list[pos], list[pos+1], \194\183\194\183\194\183, list[#list]. The default value for pos is #list+1, so that a call table.insert(t,x) inserts x at the end of list t.",type="function",argsDisplay="list, [pos,] value",args=_[215],link="https://www.lua.org/manual/5.3/manual.html#pdf-table.insert"}
_[75]={description="Sorts list elements in a given order, in-place, from list[1] to list[#list]. If comp is given, then it must be a function that receives two list elements and returns true when the first element must come before the second in the final order (so that, after the sort, i < j implies not comp(list[j],list[i])). If comp is not given, then the standard Lua operator < is used instead.",type="function",argsDisplay="list [, comp]",args=_[214],link="https://www.lua.org/manual/5.3/manual.html#pdf-table.sort"}
_[74]={description="Given a list where all elements are strings or numbers, returns the string list[i]..sep..list[i+1] \194\183\194\183\194\183 sep..list[j]. The default value for sep is the empty string, the default for i is 1, and the default for j is #list. If i is greater than j, returns the empty string.",type="function",argsDisplay="list [, sep [, i [, j]]]",args=_[213],link="https://www.lua.org/manual/5.3/manual.html#pdf-table.concat"}
_[73]={description="Moves elements from table a1 to table a2, performing the equivalent to the following multiple assignment: a2[t],\194\183\194\183\194\183 = a1[f],\194\183\194\183\194\183,a1[e]. The default for a2 is a1. The destination range can overlap with the source range. The number of elements to be moved must fit in a Lua integer.",type="function",argsDisplay="a1, f, e, t [,a2]",args=_[212],link="https://www.lua.org/manual/5.3/manual.html#pdf-table.move"}
_[72]={__index=_[211]}
_[71]={}
_[70]={}
_[69]={_[209],_[210]}
_[68]={_[208]}
_[67]={min=_[181],mininteger=_[182],fmod=_[183],abs=_[184],sin=_[185],floor=_[186],ult=_[187],maxinteger=_[188],random=_[189],type=_[190],tointeger=_[191],atan=_[192],acos=_[193],exp=_[194],tan=_[195],sqrt=_[196],asin=_[197],randomseed=_[198],rad=_[199],huge=_[200],pi=_[201],modf=_[202],max=_[203],log=_[204],ceil=_[205],deg=_[206],cos=_[207]}
_[66]={execute=_[170],difftime=_[171],date=_[172],remove=_[173],rename=_[174],getenv=_[175],time=_[176],exit=_[177],tmpname=_[178],setlocale=_[179],clock=_[180]}
_[65]={_[168],_[169]}
_[64]={_[167]}
_[63]={char=_[161],offset=_[162],codepoint=_[163],codes=_[164],len=_[165],charpattern=_[166]}
_[62]={_[160]}
_[61]={_[159]}
_[60]={_[158]}
_[59]={_[157]}
_[58]={_[156]}
_[57]={getmetatable=_[140],upvaluejoin=_[141],getupvalue=_[142],setupvalue=_[143],traceback=_[144],setuservalue=_[145],getuservalue=_[146],upvalueid=_[147],setmetatable=_[148],setlocal=_[149],getinfo=_[150],gethook=_[151],getlocal=_[152],debug=_[153],getregistry=_[154],sethook=_[155]}
_[56]={_[139]}
_[55]={byte=_[122],find=_[123],gmatch=_[124],gsub=_[125],len=_[126],upper=_[127],format=_[128],char=_[129],reverse=_[130],rep=_[131],pack=_[132],packsize=_[133],match=_[134],unpack=_[135],sub=_[136],lower=_[137],dump=_[138]}
_[54]={_[121]}
_[53]={open=_[107],input=_[108],popen=_[109],tmpfile=_[110],write=_[111],close=_[112],stderr=_[113],type=_[114],read=_[115],flush=_[116],stdin=_[117],lines=_[118],stdout=_[119],output=_[120]}
_[52]={cpath=_[99],searchers=_[100],config=_[101],loaded=_[102],searchpath=_[103],preload=_[104],path=_[105],loadlib=_[106]}
_[51]={_[98]}
_[50]={_[97]}
_[49]={_[95],_[96]}
_[48]={_[94]}
_[47]={}
_[46]={_[92],_[93]}
_[45]={running=_[85],create=_[86],isyieldable=_[87],yield=_[88],status=_[89],wrap=_[90],resume=_[91]}
_[44]={_[84]}
_[43]={_[83]}
_[42]={_[80],_[81],_[82]}
_[41]={move=_[73],concat=_[74],sort=_[75],insert=_[76],unpack=_[77],remove=_[78],pack=_[79]}
_[40]={}
_[39]={}
_[38]={type="table",fields=_[72]}
_[37]={description="Similar to load, but gets the chunk from file filename or from the standard input, if no file name is given.",type="function",argsDisplay="[filename [, mode [, env]]]",args=_[71],link="https://www.lua.org/manual/5.3/manual.html#pdf-loadfile"}
_[36]={description="This function is a generic interface to the garbage collector. It performs different functions according to its first argument, opt:",type="function",argsDisplay="[opt [, arg]]",args=_[70],link="https://www.lua.org/manual/5.3/manual.html#pdf-collectgarbage"}
_[35]={description="Sets the metatable for the given table. (To change the metatable of other types from Lua code, you must use the debug library (\194\1676.10).) If metatable is nil, removes the metatable of the given table. If the original metatable has a __metatable field, raises an error.",type="function",argsDisplay="table, metatable",args=_[69],link="https://www.lua.org/manual/5.3/manual.html#pdf-setmetatable"}
_[34]={description="If index is a number, returns all arguments after argument number index; a negative number indexes from the end (-1 is the last argument). Otherwise, index must be the string \"#\", and select returns the total number of extra arguments it received.",type="function",argsDisplay="index, \194\183\194\183\194\183",args=_[68],link="https://www.lua.org/manual/5.3/manual.html#pdf-select"}
_[33]={description="This library provides basic mathematical functions. It provides all its functions and constants inside the table math. Functions with the annotation \"integer/float\" give integer results for integer arguments and float results for float (or mixed) arguments. Rounding functions (math.ceil, math.floor, and math.modf) return an integer when the result fits in the range of an integer, or a float otherwise.",link="https://www.lua.org/manual/5.3/manual.html#6.7",type="table",fields=_[67]}
_[32]={description="This library is implemented through table os.",link="https://www.lua.org/manual/5.3/manual.html#6.9",type="table",fields=_[66]}
_[31]={description="Gets the real value of table[index], without invoking the __index metamethod. table must be a table; index may be any value.",type="function",argsDisplay="table, index",args=_[65],link="https://www.lua.org/manual/5.3/manual.html#pdf-rawget"}
_[30]={description="Loads a chunk.",type="function",argsDisplay="chunk [, chunkname [, mode [, env]]]",args=_[64],link="https://www.lua.org/manual/5.3/manual.html#pdf-load"}
_[29]={description="This library provides basic support for UTF-8 encoding. It provides all its functions inside the table utf8. This library does not provide any support for Unicode other than the handling of the encoding. Any operation that needs the meaning of a character, such as character classification, is outside its scope.",link="https://www.lua.org/manual/5.3/manual.html#6.5",type="table",fields=_[63]}
_[28]={description="Returns the type of its only argument, coded as a string. The possible results of this function are \"nil\" (a string, not the value nil), \"number\", \"string\", \"boolean\", \"table\", \"function\", \"thread\", and \"userdata\".",type="function",argsDisplay="v",args=_[62],link="https://www.lua.org/manual/5.3/manual.html#pdf-type"}
_[27]={description="If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a __metatable field, returns the associated value. Otherwise, returns the metatable of the given object.",type="function",argsDisplay="object",args=_[61],link="https://www.lua.org/manual/5.3/manual.html#pdf-getmetatable"}
_[26]={description="Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. next returns the next index of the table and its associated value. When called with nil as its second argument, next returns an initial index and its associated value. When called with the last index, or with nil in an empty table, next returns nil. If the second argument is absent, then it is interpreted as nil. In particular, you can use next(t) to check whether a table is empty.",type="function",argsDisplay="table [, index]",args=_[60],link="https://www.lua.org/manual/5.3/manual.html#pdf-next"}
_[25]={description="If t has a metamethod __pairs, calls it with t as argument and returns the first three results from the call.",type="function",argsDisplay="t",args=_[59],link="https://www.lua.org/manual/5.3/manual.html#pdf-pairs"}
_[24]={description="Returns the length of the object v, which must be a table or a string, without invoking the __len metamethod. Returns an integer.",type="function",argsDisplay="v",args=_[58],link="https://www.lua.org/manual/5.3/manual.html#pdf-rawlen"}
_[23]={description="This library provides the functionality of the debug interface (\194\1674.9) to Lua programs. You should exert care when using this library. Several of its functions violate basic assumptions about Lua code (e.g., that variables local to a function cannot be accessed from outside; that userdata metatables cannot be changed by Lua code; that Lua programs do not crash) and therefore can compromise otherwise secure code. Moreover, some functions in this library may be slow.",link="https://www.lua.org/manual/5.3/manual.html#6.10",type="table",fields=_[57]}
_[22]={description="Terminates the last protected function called and returns message as the error object. Function error never returns.",type="function",argsDisplay="message [, level]",args=_[56],link="https://www.lua.org/manual/5.3/manual.html#pdf-error"}
_[21]={description="This library provides generic functions for string manipulation, such as finding and extracting substrings, and pattern matching. When indexing a string in Lua, the first character is at position 1 (not at 0, as in C). Indices are allowed to be negative and are interpreted as indexing backwards, from the end of the string. Thus, the last character is at position -1, and so on.",link="https://www.lua.org/manual/5.3/manual.html#6.4",type="table",fields=_[55]}
_[20]={description="Calls error if the value of its argument v is false (i.e., nil or false); otherwise, returns all its arguments. In case of error, message is the error object; when absent, it defaults to \"assertion failed!\"",type="function",argsDisplay="v [, message]",args=_[54],link="https://www.lua.org/manual/5.3/manual.html#pdf-assert"}
_[19]={description="The I/O library provides two different styles for file manipulation. The first one uses implicit file handles; that is, there are operations to set a default input file and a default output file, and all input/output operations are over these default files. The second style uses explicit file handles.",link="https://www.lua.org/manual/5.3/manual.html#6.8",type="table",fields=_[53]}
_[18]={description="The package library provides basic facilities for loading modules in Lua. It exports one function directly in the global environment: require. Everything else is exported in a table package.",link="https://www.lua.org/manual/5.3/manual.html#6.3",type="table",fields=_[52]}
_[17]={description="Returns three values (an iterator function, the table t, and 0) so that the construction",type="function",argsDisplay="t",args=_[51],link="https://www.lua.org/manual/5.3/manual.html#pdf-ipairs"}
_[16]={description="Loads the given module. The function starts by looking into the package.loaded table to determine whether modname is already loaded. If it is, then require returns the value stored at package.loaded[modname]. Otherwise, it tries to find a loader for the module.",type="function",argsDisplay="modname",args=_[50],link="https://www.lua.org/manual/5.3/manual.html#pdf-require"}
_[15]={description="Checks whether v1 is equal to v2, without invoking the __eq metamethod. Returns a boolean.",type="function",argsDisplay="v1, v2",args=_[49],link="https://www.lua.org/manual/5.3/manual.html#pdf-rawequal"}
_[14]={description="Calls function f with the given arguments in protected mode. This means that any error inside f is not propagated; instead, pcall catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, pcall also returns all results from the call, after this first result. In case of any error, pcall returns false plus the error message.",type="function",argsDisplay="f [, arg1, \194\183\194\183\194\183]",args=_[48],link="https://www.lua.org/manual/5.3/manual.html#pdf-pcall"}
_[13]={description="Receives any number of arguments and prints their values to stdout, using the tostring function to convert each argument to a string. print is not intended for formatted output, but only as a quick way to show a value, for instance for debugging. For complete control over the output, use string.format and io.write.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[47],link="https://www.lua.org/manual/5.3/manual.html#pdf-print"}
_[12]={description="This function is similar to pcall, except that it sets a new message handler msgh.",type="function",argsDisplay="f, msgh [, arg1, \194\183\194\183\194\183]",args=_[46],link="https://www.lua.org/manual/5.3/manual.html#pdf-xpcall"}
_[11]={description="This library comprises the operations to manipulate coroutines, which come inside the table coroutine. See \194\1672.6 for a general description of coroutines.",link="https://www.lua.org/manual/5.3/manual.html#6.2",type="table",fields=_[45]}
_[10]={description="Receives a value of any type and converts it to a string in a human-readable format. (For complete control of how numbers are converted, use string.format.)",type="function",argsDisplay="v",args=_[44],link="https://www.lua.org/manual/5.3/manual.html#pdf-tostring"}
_[9]={description="When called with no base, tonumber tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then tonumber returns this number; otherwise, it returns nil.",type="function",argsDisplay="e [, base]",args=_[43],link="https://www.lua.org/manual/5.3/manual.html#pdf-tonumber"}
_[8]={link="https://www.lua.org/manual/5.3/manual.html#pdf-_VERSION",type="string",description="A global variable (not a function) that holds a string containing the running Lua version. The current value of this variable is \"Lua 5.3\"."}
_[7]={description="Sets the real value of table[index] to value, without invoking the __newindex metamethod. table must be a table, index any value different from nil and NaN, and value any Lua value.",type="function",argsDisplay="table, index, value",args=_[42],link="https://www.lua.org/manual/5.3/manual.html#pdf-rawset"}
_[6]={description="This library provides generic functions for table manipulation. It provides all its functions inside the table table.",link="https://www.lua.org/manual/5.3/manual.html#6.6",type="table",fields=_[41]}
_[5]={description="Opens the named file and executes its contents as a Lua chunk. When called without arguments, dofile executes the contents of the standard input (stdin). Returns all values returned by the chunk. In case of errors, dofile propagates the error to its caller (that is, dofile does not run in protected mode).",type="function",argsDisplay="[filename]",args=_[40],link="https://www.lua.org/manual/5.3/manual.html#pdf-dofile"}
_[4]={metatable=_[38],type="table",fields=_[39]}
_[3]={dofile=_[5],table=_[6],rawset=_[7],_VERSION=_[8],tonumber=_[9],tostring=_[10],coroutine=_[11],xpcall=_[12],print=_[13],pcall=_[14],rawequal=_[15],require=_[16],ipairs=_[17],package=_[18],io=_[19],assert=_[20],string=_[21],error=_[22],debug=_[23],rawlen=_[24],pairs=_[25],next=_[26],getmetatable=_[27],type=_[28],utf8=_[29],load=_[30],rawget=_[31],os=_[32],math=_[33],select=_[34],setmetatable=_[35],collectgarbage=_[36],loadfile=_[37]}
_[2]={file=_[4]}
_[1]={type="table",fields=_[3]}
return {global=_[1],namedTypes=_[2]}