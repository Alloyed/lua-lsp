local _={}
_[454]={name="self"}
_[453]={name="mode"}
_[452]={name="self"}
_[451]={name="self"}
_[450]={name="self"}
_[449]={name="self"}
_[448]={name="self"}
_[447]={name="self"}
_[446]={_[454]}
_[445]={_[452],_[453]}
_[444]={_[451]}
_[443]={_[450]}
_[442]={_[449]}
_[441]={_[448]}
_[440]={_[447]}
_[439]={description="Closes file. Note that files are automatically closed when their handles are garbage collected, but that takes an unpredictable amount of time to happen.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[446],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:close"}
_[438]={description="Sets the buffering mode for an output file. There are three available modes:",type="function",argsDisplayOmitSelf="mode [, size]",argsDisplay="self, mode [, size]",args=_[445],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:setvbuf"}
_[437]={description="Returns an iterator function that, each time it is called, reads the file according to the given formats. When no format is given, uses \"*l\" as a default. As an example, the construction",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[444],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:lines"}
_[436]={description="Writes the value of each of its arguments to file. The arguments must be strings or numbers.",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[443],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:write"}
_[435]={description="Sets and gets the file position, measured from the beginning of the file, to the position given by offset plus a base specified by the string whence, as follows:",type="function",argsDisplayOmitSelf="[whence [, offset]]",argsDisplay="self, [whence [, offset]]",args=_[442],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:seek"}
_[434]={description="Reads the file file, according to the given formats, which specify what to read. For each format, the function returns a string (or a number) with the characters read, or nil if it cannot read data with the specified format. When called without formats, it uses a default format that reads the next line (see below).",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[441],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:read"}
_[433]={description="Saves any written data to file.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[440],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:flush"}
_[432]={name="x"}
_[431]={name="x"}
_[430]={name="x"}
_[429]={name="x"}
_[428]={name="x"}
_[427]={name="x"}
_[426]={name="x"}
_[425]={name="x"}
_[424]={name="x"}
_[423]={name="x"}
_[422]={name="x"}
_[421]={name="x"}
_[420]={name="x"}
_[419]={name="x"}
_[418]={name="x"}
_[417]={name="x"}
_[416]={name="x"}
_[415]={name="x"}
_[414]={name="y"}
_[413]={name="x"}
_[412]={name="x"}
_[411]={name="e"}
_[410]={name="m"}
_[409]={name="x"}
_[408]={name="x"}
_[407]={name="y"}
_[406]={name="x"}
_[405]={name="x"}
_[404]={name="x"}
_[403]={name="y"}
_[402]={name="locale"}
_[401]={name="varname"}
_[400]={name="newname"}
_[399]={name="oldname"}
_[398]={name="filename"}
_[397]={name="t1"}
_[396]={name="t2"}
_[395]={name="up"}
_[394]={name="f"}
_[393]={name="value"}
_[392]={name="udata"}
_[391]={name="n"}
_[390]={name="f"}
_[389]={name="u"}
_[388]={name="value"}
_[387]={name="up"}
_[386]={name="f"}
_[385]={name="table"}
_[384]={name="value"}
_[383]={name="n2"}
_[382]={name="f2"}
_[381]={name="n1"}
_[380]={name="f1"}
_[379]={name="value"}
_[378]={name="function"}
_[377]={name="s"}
_[376]={name="i"}
_[375]={name="s"}
_[374]={name="n"}
_[373]={name="s"}
_[372]={name="repl"}
_[371]={name="pattern"}
_[370]={name="s"}
_[369]={name="pattern"}
_[368]={name="s"}
_[367]={name="s"}
_[366]={name="pattern"}
_[365]={name="s"}
_[364]={name="pattern"}
_[363]={name="s"}
_[362]={name="s"}
_[361]={name="s"}
_[360]={name="formatstring"}
_[359]={name="s"}
_[358]={name="obj"}
_[357]={type="ref",name="file"}
_[356]={name="prog"}
_[355]={type="ref",name="file"}
_[354]={name="filename"}
_[353]={type="ref",name="file"}
_[352]={name="funcname"}
_[351]={name="libname"}
_[350]={name="path"}
_[349]={name="name"}
_[348]={name="disp"}
_[347]={name="x"}
_[346]={name="disp"}
_[345]={name="x"}
_[344]={name="disp"}
_[343]={name="x"}
_[342]={name="disp"}
_[341]={name="x"}
_[340]={name="field"}
_[339]={name="v"}
_[338]={name="n"}
_[337]={name="x"}
_[336]={name="disp"}
_[335]={name="x"}
_[334]={name="field"}
_[333]={name="n"}
_[332]={name="co"}
_[331]={name="f"}
_[330]={name="co"}
_[329]={name="f"}
_[328]={name="list"}
_[327]={name="list"}
_[326]={name="list"}
_[325]={name="list"}
_[324]={name="list"}
_[323]={flush=_[433],read=_[434],seek=_[435],write=_[436],lines=_[437],setvbuf=_[438],close=_[439]}
_[322]={_[432]}
_[321]={_[431]}
_[320]={_[430]}
_[319]={_[429]}
_[318]={_[428]}
_[317]={_[427]}
_[316]={_[426]}
_[315]={_[425]}
_[314]={_[424]}
_[313]={_[423]}
_[312]={_[422]}
_[311]={_[421]}
_[310]={_[420]}
_[309]={_[419]}
_[308]={_[418]}
_[307]={_[417]}
_[306]={_[416]}
_[305]={}
_[304]={_[415]}
_[303]={_[413],_[414]}
_[302]={_[412]}
_[301]={_[410],_[411]}
_[300]={_[409]}
_[299]={_[408]}
_[298]={_[406],_[407]}
_[297]={_[405]}
_[296]={_[403],_[404]}
_[295]={}
_[294]={_[402]}
_[293]={}
_[292]={}
_[291]={}
_[290]={_[401]}
_[289]={_[399],_[400]}
_[288]={_[398]}
_[287]={}
_[286]={_[396],_[397]}
_[285]={}
_[284]={}
_[283]={_[394],_[395]}
_[282]={_[392],_[393]}
_[281]={}
_[280]={}
_[279]={}
_[278]={}
_[277]={}
_[276]={_[390],_[391]}
_[275]={_[389]}
_[274]={_[386],_[387],_[388]}
_[273]={}
_[272]={_[384],_[385]}
_[271]={}
_[270]={_[380],_[381],_[382],_[383]}
_[269]={_[379]}
_[268]={_[378]}
_[267]={_[377]}
_[266]={_[375],_[376]}
_[265]={_[373],_[374]}
_[264]={_[370],_[371],_[372]}
_[263]={_[368],_[369]}
_[262]={_[367]}
_[261]={_[365],_[366]}
_[260]={_[363],_[364]}
_[259]={_[362]}
_[258]={_[361]}
_[257]={}
_[256]={_[360]}
_[255]={_[359]}
_[254]={}
_[253]={}
_[252]={}
_[251]={}
_[250]={_[358]}
_[249]={}
_[248]={}
_[247]={}
_[246]={_[357]}
_[245]={_[356]}
_[244]={_[355]}
_[243]={}
_[242]={_[354]}
_[241]={_[353]}
_[240]={_[351],_[352]}
_[239]={_[349],_[350]}
_[238]={_[347],_[348]}
_[237]={}
_[236]={_[345],_[346]}
_[235]={_[343],_[344]}
_[234]={_[341],_[342]}
_[233]={}
_[232]={}
_[231]={_[338],_[339],_[340]}
_[230]={}
_[229]={_[337]}
_[228]={_[335],_[336]}
_[227]={_[333],_[334]}
_[226]={_[332]}
_[225]={_[331]}
_[224]={}
_[223]={_[330]}
_[222]={_[329]}
_[221]={}
_[220]={}
_[219]={_[328]}
_[218]={_[327]}
_[217]={_[326]}
_[216]={_[325]}
_[215]={_[324]}
_[214]={type="table",fields=_[323]}
_[213]={name="e"}
_[212]={name="index"}
_[211]={description="Returns the cosine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[322],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.cos"}
_[210]={description="Returns the angle x (given in radians) in degrees.",type="function",argsDisplay="x",args=_[321],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.deg"}
_[209]={description="Returns the hyperbolic tangent of x.",type="function",argsDisplay="x",args=_[320],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.tanh"}
_[208]={description="Returns the logarithm of x in the given base. The default for base is e (so that the function returns the natural logarithm of x).",type="function",argsDisplay="x [, base]",args=_[319],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.log"}
_[207]={description="Returns m and e such that x = m2e, e is an integer and the absolute value of m is in the range [0.5, 1) (or zero when x is zero).",type="function",argsDisplay="x",args=_[318],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.frexp"}
_[206]={description="Returns the minimum value among its arguments.",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[317],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.min"}
_[205]={description="Returns two numbers, the integral part of x and the fractional part of x.",type="function",argsDisplay="x",args=_[316],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.modf"}
_[204]={description="Returns the smallest integer larger than or equal to x.",type="function",argsDisplay="x",args=_[315],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.ceil"}
_[203]={link="https://www.lua.org/manual/5.2/manual.html#pdf-math.pi",type="number",description="The value of \207\128."}
_[202]={description="Returns the hyperbolic sine of x.",type="function",argsDisplay="x",args=_[314],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.sinh"}
_[201]={description="Returns the arc sine of x (in radians).",type="function",argsDisplay="x",args=_[313],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.asin"}
_[200]={description="Sets x as the \"seed\" for the pseudo-random generator: equal seeds produce equal sequences of numbers.",type="function",argsDisplay="x",args=_[312],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.randomseed"}
_[199]={description="Returns the angle x (given in degrees) in radians.",type="function",argsDisplay="x",args=_[311],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.rad"}
_[198]={description="Returns the value ex.",type="function",argsDisplay="x",args=_[310],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.exp"}
_[197]={description="Returns the arc cosine of x (in radians).",type="function",argsDisplay="x",args=_[309],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.acos"}
_[196]={description="Returns the arc tangent of x (in radians).",type="function",argsDisplay="x",args=_[308],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.atan"}
_[195]={description="Returns the hyperbolic cosine of x.",type="function",argsDisplay="x",args=_[307],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.cosh"}
_[194]={description="Returns the square root of x. (You can also use the expression x^0.5 to compute this value.)",type="function",argsDisplay="x",args=_[306],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.sqrt"}
_[193]={description="This function is an interface to the simple pseudo-random generator function rand provided by Standard C. (No guarantees can be given for its statistical properties.)",type="function",argsDisplay="[m [, n]]",args=_[305],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.random"}
_[192]={description="Returns the tangent of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[304],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.tan"}
_[191]={description="Returns xy. (You can also use the expression x^y to compute this value.)",type="function",argsDisplay="x, y",args=_[303],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.pow"}
_[190]={description="Returns the largest integer smaller than or equal to x.",type="function",argsDisplay="x",args=_[302],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.floor"}
_[189]={description="Returns m2e (e should be an integer).",type="function",argsDisplay="m, e",args=_[301],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.ldexp"}
_[188]={description="Returns the sine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[300],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.sin"}
_[187]={description="Returns the absolute value of x.",type="function",argsDisplay="x",args=_[299],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.abs"}
_[186]={link="https://www.lua.org/manual/5.2/manual.html#pdf-math.huge",type="unknown",description="The value HUGE_VAL, a value larger than or equal to any other numerical value."}
_[185]={description="Returns the remainder of the division of x by y that rounds the quotient towards zero.",type="function",argsDisplay="x, y",args=_[298],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.fmod"}
_[184]={description="Returns the maximum value among its arguments.",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[297],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.max"}
_[183]={description="Returns the arc tangent of y/x (in radians), but uses the signs of both parameters to find the quadrant of the result. (It also handles correctly the case of x being zero.)",type="function",argsDisplay="y, x",args=_[296],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.atan2"}
_[182]={description="Returns an approximation of the amount in seconds of CPU time used by the program.",type="function",argsDisplay="",args=_[295],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.clock"}
_[181]={description="Sets the current locale of the program. locale is a system-dependent string specifying a locale; category is an optional string describing which category to change: \"all\", \"collate\", \"ctype\", \"monetary\", \"numeric\", or \"time\"; the default category is \"all\". The function returns the name of the new locale, or nil if the request cannot be honored.",type="function",argsDisplay="locale [, category]",args=_[294],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.setlocale"}
_[180]={description="Returns a string with a file name that can be used for a temporary file. The file must be explicitly opened before its use and explicitly removed when no longer needed.",type="function",argsDisplay="",args=_[293],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.tmpname"}
_[179]={description="Calls the ISO C function exit to terminate the host program. If code is true, the returned status is EXIT_SUCCESS; if code is false, the returned status is EXIT_FAILURE; if code is a number, the returned status is this number. The default value for code is true.",type="function",argsDisplay="[code [, close]",args=_[292],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.exit"}
_[178]={description="Returns the current time when called without arguments, or a time representing the date and time specified by the given table. This table must have fields year, month, and day, and may have fields hour (default is 12), min (default is 0), sec (default is 0), and isdst (default is nil). For a description of these fields, see the os.date function.",type="function",argsDisplay="[table]",args=_[291],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.time"}
_[177]={description="Returns the value of the process environment variable varname, or nil if the variable is not defined.",type="function",argsDisplay="varname",args=_[290],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.getenv"}
_[176]={description="Renames file or directory named oldname to newname. If this function fails, it returns nil, plus a string describing the error and the error code.",type="function",argsDisplay="oldname, newname",args=_[289],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.rename"}
_[175]={description="Deletes the file (or empty directory, on POSIX systems) with the given name. If this function fails, it returns nil, plus a string describing the error and the error code.",type="function",argsDisplay="filename",args=_[288],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.remove"}
_[174]={description="Returns a string or a table containing date and time, formatted according to the given string format.",type="function",argsDisplay="[format [, time]]",args=_[287],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.date"}
_[173]={description="Returns the number of seconds from time t1 to time t2. In POSIX, Windows, and some other systems, this value is exactly t2-t1.",type="function",argsDisplay="t2, t1",args=_[286],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.difftime"}
_[172]={description="This function is equivalent to the ISO C function system. It passes command to be executed by an operating system shell. Its first result is true if the command terminated successfully, or nil otherwise. After this first result the function returns a string and a number, as follows:",type="function",argsDisplay="[command]",args=_[285],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.execute"}
_[171]={name="index"}
_[170]={name="table"}
_[169]={name="ld"}
_[168]={name="v"}
_[167]={name="object"}
_[166]={name="table"}
_[165]={name="t"}
_[164]={name="v"}
_[163]={description="Sets the given function as a hook. The string mask and the number count describe when the hook will be called. The string mask may have any combination of the following characters, with the given meaning:",type="function",argsDisplay="[thread,] hook, mask [, count]",args=_[284],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.sethook"}
_[162]={description="This function returns the name and the value of the upvalue with index up of the function f. The function returns nil if there is no upvalue with the given index.",type="function",argsDisplay="f, up",args=_[283],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getupvalue"}
_[161]={description="Sets the given value as the Lua value associated to the given udata. value must be a table or nil; udata must be a full userdata.",type="function",argsDisplay="udata, value",args=_[282],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.setuservalue"}
_[160]={description="This function returns the name and the value of the local variable with index local of the function at level f of the stack. This function accesses not only explicit local variables, but also parameters, temporaries, etc.",type="function",argsDisplay="[thread,] f, local",args=_[281],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getlocal"}
_[159]={description="Returns the current hook settings of the thread, as three values: the current hook function, the current hook mask, and the current hook count (as set by the debug.sethook function).",type="function",argsDisplay="[thread]",args=_[280],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.gethook"}
_[158]={description="Returns a table with information about a function. You can give the function directly or you can give a number as the value of f, which means the function running at level f of the call stack of the given thread: level 0 is the current function (getinfo itself); level 1 is the function that called getinfo (except for tail calls, which do not count on the stack); and so on. If f is a number larger than the number of active functions, then getinfo returns nil.",type="function",argsDisplay="[thread,] f [, what]",args=_[279],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getinfo"}
_[157]={description="Returns the registry table (see \194\1674.5).",type="function",argsDisplay="",args=_[278],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getregistry"}
_[156]={description="This function assigns the value value to the local variable with index local of the function at level level of the stack. The function returns nil if there is no local variable with the given index, and raises an error when called with a level out of range. (You can call getinfo to check whether the level is valid.) Otherwise, it returns the name of the local variable.",type="function",argsDisplay="[thread,] level, local, value",args=_[277],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.setlocal"}
_[155]={description="Returns an unique identifier (as a light userdata) for the upvalue numbered n from the given function.",type="function",argsDisplay="f, n",args=_[276],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.upvalueid"}
_[154]={description="Returns the Lua value associated to u. If u is not a userdata, returns nil.",type="function",argsDisplay="u",args=_[275],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getuservalue"}
_[153]={description="This function assigns the value value to the upvalue with index up of the function f. The function returns nil if there is no upvalue with the given index. Otherwise, it returns the name of the upvalue.",type="function",argsDisplay="f, up, value",args=_[274],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.setupvalue"}
_[152]={description="If message is present but is neither a string nor nil, this function returns message without further processing. Otherwise, it returns a string with a traceback of the call stack. An optional message string is appended at the beginning of the traceback. An optional level number tells at which level to start the traceback (default is 1, the function calling traceback).",type="function",argsDisplay="[thread,] [message [, level]]",args=_[273],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.traceback"}
_[151]={description="Sets the metatable for the given value to the given table (which can be nil). Returns value.",type="function",argsDisplay="value, table",args=_[272],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.setmetatable"}
_[150]={description="Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.",type="function",argsDisplay="",args=_[271],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.debug"}
_[149]={description="Make the n1-th upvalue of the Lua closure f1 refer to the n2-th upvalue of the Lua closure f2.",type="function",argsDisplay="f1, n1, f2, n2",args=_[270],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.upvaluejoin"}
_[148]={description="Returns the metatable of the given value or nil if it does not have a metatable.",type="function",argsDisplay="value",args=_[269],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getmetatable"}
_[147]={name="message"}
_[146]={description="Returns a string containing a binary representation of the given function, so that a later load on this string returns a copy of the function (but with new upvalues).",type="function",argsDisplay="function",args=_[268],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.dump"}
_[145]={description="Receives a string and returns its length. The empty string \"\" has length 0. Embedded zeros are counted, so \"a\\000bc\\000\" has length 5.",type="function",argsDisplay="s",args=_[267],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.len"}
_[144]={description="Returns the substring of s that starts at i and continues until j; i and j can be negative. If j is absent, then it is assumed to be equal to -1 (which is the same as the string length). In particular, the call string.sub(s,1,j) returns a prefix of s with length j, and string.sub(s, -i) returns a suffix of s with length i.",type="function",argsDisplay="s, i [, j]",args=_[266],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.sub"}
_[143]={description="Returns a string that is the concatenation of n copies of the string s separated by the string sep. The default value for sep is the empty string (that is, no separator).",type="function",argsDisplay="s, n [, sep]",args=_[265],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.rep"}
_[142]={description="Returns a copy of s in which all (or the first n, if given) occurrences of the pattern have been replaced by a replacement string specified by repl, which can be a string, a table, or a function. gsub also returns, as its second value, the total number of matches that occurred. The name gsub comes from Global SUBstitution.",type="function",argsDisplay="s, pattern, repl [, n]",args=_[264],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.gsub"}
_[141]={description="Looks for the first match of pattern in the string s. If it finds one, then match returns the captures from the pattern; otherwise it returns nil. If pattern specifies no captures, then the whole match is returned. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative.",type="function",argsDisplay="s, pattern [, init]",args=_[263],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.match"}
_[140]={description="Receives a string and returns a copy of this string with all uppercase letters changed to lowercase. All other characters are left unchanged. The definition of what an uppercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[262],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.lower"}
_[139]={description="Returns an iterator function that, each time it is called, returns the next captures from pattern over the string s. If pattern specifies no captures, then the whole match is produced in each call.",type="function",argsDisplay="s, pattern",args=_[261],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.gmatch"}
_[138]={description="Looks for the first match of pattern in the string s. If it finds a match, then find returns the indices of s where this occurrence starts and ends; otherwise, it returns nil. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative. A value of true as a fourth, optional argument plain turns off the pattern matching facilities, so the function does a plain \"find substring\" operation, with no characters in pattern being considered magic. Note that if plain is given, then init must be given as well.",type="function",argsDisplay="s, pattern [, init [, plain]]",args=_[260],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.find"}
_[137]={description="Returns a string that is the string s reversed.",type="function",argsDisplay="s",args=_[259],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.reverse"}
_[136]={description="Returns the internal numerical codes of the characters s[i], s[i+1], ..., s[j]. The default value for i is 1; the default value for j is i. These indices are corrected following the same rules of function string.sub.",type="function",argsDisplay="s [, i [, j]]",args=_[258],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.byte"}
_[135]={description="Receives zero or more integers. Returns a string with length equal to the number of arguments, in which each character has the internal numerical code equal to its corresponding argument.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[257],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.char"}
_[134]={description="Returns a formatted version of its variable number of arguments following the description given in its first argument (which must be a string). The format string follows the same rules as the ISO C function sprintf. The only differences are that the options/modifiers *, h, L, l, n, and p are not supported and that there is an extra option, q. The q option formats a string between double quotes, using escape sequences when necessary to ensure that it can safely be read back by the Lua interpreter. For instance, the call",type="function",argsDisplay="formatstring, \194\183\194\183\194\183",args=_[256],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.format"}
_[133]={description="Receives a string and returns a copy of this string with all lowercase letters changed to uppercase. All other characters are left unchanged. The definition of what a lowercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[255],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.upper"}
_[132]={name="v"}
_[131]={description="Similar to io.input, but operates over the default output file.",type="function",argsDisplay="[file]",args=_[254],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.output"}
_[130]={type="ref",name="file"}
_[129]={description="Opens the given file name in read mode and returns an iterator function that works like file:lines(\194\183\194\183\194\183) over the opened file. When the iterator function detects the end of file, it returns nil (to finish the loop) and automatically closes the file.",type="function",argsDisplay="[filename \194\183\194\183\194\183]",args=_[253],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.lines"}
_[128]={type="ref",name="file"}
_[127]={description="Equivalent to io.output():flush().",type="function",argsDisplay="",args=_[252],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.flush"}
_[126]={description="Equivalent to io.input():read(\194\183\194\183\194\183).",type="function",argsDisplay="\194\183\194\183\194\183",args=_[251],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.read"}
_[125]={description="Checks whether obj is a valid file handle. Returns the string \"file\" if obj is an open file handle, \"closed file\" if obj is a closed file handle, or nil if obj is not a file handle.",type="function",argsDisplay="obj",args=_[250],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.type"}
_[124]={type="ref",name="file"}
_[123]={description="Equivalent to file:close(). Without a file, closes the default output file.",type="function",argsDisplay="[file]",args=_[249],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.close"}
_[122]={description="Equivalent to io.output():write(\194\183\194\183\194\183).",type="function",argsDisplay="\194\183\194\183\194\183",args=_[248],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.write"}
_[121]={description="Returns a handle for a temporary file. This file is opened in update mode and it is automatically removed when the program ends.",type="function",argsDisplay="",returnTypes=_[246],args=_[247],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.tmpfile"}
_[120]={description="This function is system dependent and is not available on all platforms.",type="function",argsDisplay="prog [, mode]",returnTypes=_[244],args=_[245],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.popen"}
_[119]={description="When called with a file name, it opens the named file (in text mode), and sets its handle as the default input file. When called with a file handle, it simply sets this file handle as the default input file. When called without parameters, it returns the current default input file.",type="function",argsDisplay="[file]",args=_[243],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.input"}
_[118]={description="This function opens a file, in the mode specified in the string mode. It returns a new file handle, or, in case of errors, nil plus an error message.",type="function",argsDisplay="filename [, mode]",returnTypes=_[241],args=_[242],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.open"}
_[117]={description="Dynamically links the host program with the C library libname.",type="function",argsDisplay="libname, funcname",args=_[240],link="https://www.lua.org/manual/5.2/manual.html#pdf-package.loadlib"}
_[116]={link="https://www.lua.org/manual/5.2/manual.html#pdf-package.path",type="unknown",description="The path used by require to search for a Lua loader."}
_[115]={link="https://www.lua.org/manual/5.2/manual.html#pdf-package.preload",type="unknown",description="A table to store loaders for specific modules (see require)."}
_[114]={description="Searches for the given name in the given path.",type="function",argsDisplay="name, path [, sep [, rep]]",args=_[239],link="https://www.lua.org/manual/5.2/manual.html#pdf-package.searchpath"}
_[113]={link="https://www.lua.org/manual/5.2/manual.html#pdf-package.loaded",type="unknown",description="A table used by require to control which modules are already loaded. When you require a module modname and package.loaded[modname] is not false, require simply returns the value stored there."}
_[112]={link="https://www.lua.org/manual/5.2/manual.html#pdf-package.config",type="unknown",description="A string describing some compile-time configurations for packages. This string is a sequence of lines:"}
_[111]={link="https://www.lua.org/manual/5.2/manual.html#pdf-package.searchers",type="unknown",description="A table used by require to control how to load modules."}
_[110]={link="https://www.lua.org/manual/5.2/manual.html#pdf-package.cpath",type="unknown",description="The path used by require to search for a C loader."}
_[109]={name="t"}
_[108]={name="modname"}
_[107]={description="Returns the number x rotated disp bits to the left. The number disp may be any representable integer.",type="function",argsDisplay="x, disp",args=_[238],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.lrotate"}
_[106]={description="Returns the bitwise exclusive or of its operands.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[237],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.bxor"}
_[105]={description="Returns the number x rotated disp bits to the right. The number disp may be any representable integer.",type="function",argsDisplay="x, disp",args=_[236],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.rrotate"}
_[104]={description="Returns the number x shifted disp bits to the left. The number disp may be any representable integer. Negative displacements shift to the right. In any direction, vacant bits are filled with zeros. In particular, displacements with absolute values higher than 31 result in zero (all bits are shifted out).",type="function",argsDisplay="x, disp",args=_[235],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.lshift"}
_[103]={description="Returns the number x shifted disp bits to the right. The number disp may be any representable integer. Negative displacements shift to the left.",type="function",argsDisplay="x, disp",args=_[234],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.arshift"}
_[102]={description="Returns the bitwise or of its operands.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[233],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.bor"}
_[101]={description="Returns a boolean signaling whether the bitwise and of its operands is different from zero.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[232],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.btest"}
_[100]={description="Returns a copy of n with the bits field to field + width - 1 replaced by the value v. See bit32.extract for details about field and width.",type="function",argsDisplay="n, v, field [, width]",args=_[231],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.replace"}
_[99]={description="Returns the bitwise and of its operands.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[230],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.band"}
_[98]={description="Returns the bitwise negation of x. For any integer x, the following identity holds:",type="function",argsDisplay="x",args=_[229],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.bnot"}
_[97]={description="Returns the number x shifted disp bits to the right. The number disp may be any representable integer. Negative displacements shift to the left. In any direction, vacant bits are filled with zeros. In particular, displacements with absolute values higher than 31 result in zero (all bits are shifted out).",type="function",argsDisplay="x, disp",args=_[228],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.rshift"}
_[96]={description="Returns the unsigned number formed by the bits field to field + width - 1 from n. Bits are numbered from 0 (least significant) to 31 (most significant). All accessed bits must be in the range [0, 31].",type="function",argsDisplay="n, field [, width]",args=_[227],link="https://www.lua.org/manual/5.2/manual.html#pdf-bit32.extract"}
_[95]={name="v2"}
_[94]={name="v1"}
_[93]={name="f"}
_[92]={name="msgh"}
_[91]={name="f"}
_[90]={description="Starts or continues the execution of coroutine co. The first time you resume a coroutine, it starts running its body. The values val1, ... are passed as the arguments to the body function. If the coroutine has yielded, resume restarts it; the values val1, ... are passed as the results from the yield.",type="function",argsDisplay="co [, val1, \194\183\194\183\194\183]",args=_[226],link="https://www.lua.org/manual/5.2/manual.html#pdf-coroutine.resume"}
_[89]={description="Creates a new coroutine, with body f. f must be a Lua function. Returns a function that resumes the coroutine each time it is called. Any arguments passed to the function behave as the extra arguments to resume. Returns the same values returned by resume, except the first boolean. In case of error, propagates the error.",type="function",argsDisplay="f",args=_[225],link="https://www.lua.org/manual/5.2/manual.html#pdf-coroutine.wrap"}
_[88]={description="Suspends the execution of the calling coroutine. Any arguments to yield are passed as extra results to resume.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[224],link="https://www.lua.org/manual/5.2/manual.html#pdf-coroutine.yield"}
_[87]={description="Returns the status of coroutine co, as a string: \"running\", if the coroutine is running (that is, it called status); \"suspended\", if the coroutine is suspended in a call to yield, or if it has not started running yet; \"normal\" if the coroutine is active but not running (that is, it has resumed another coroutine); and \"dead\" if the coroutine has finished its body function, or if it has stopped with an error.",type="function",argsDisplay="co",args=_[223],link="https://www.lua.org/manual/5.2/manual.html#pdf-coroutine.status"}
_[86]={description="Creates a new coroutine, with body f. f must be a Lua function. Returns this new coroutine, an object with type \"thread\".",type="function",argsDisplay="f",args=_[222],link="https://www.lua.org/manual/5.2/manual.html#pdf-coroutine.create"}
_[85]={description="Returns the running coroutine plus a boolean, true when the running coroutine is the main one.",type="function",argsDisplay="",args=_[221],link="https://www.lua.org/manual/5.2/manual.html#pdf-coroutine.running"}
_[84]={name="v"}
_[83]={name="metatable"}
_[82]={name="table"}
_[81]={name="value"}
_[80]={name="index"}
_[79]={name="table"}
_[78]={description="Returns a new table with all parameters stored into keys 1, 2, etc. and with a field \"n\" with the total number of parameters. Note that the resulting table may not be a sequence.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[220],link="https://www.lua.org/manual/5.2/manual.html#pdf-table.pack"}
_[77]={description="Inserts element value at position pos in list, shifting up the elements list[pos], list[pos+1], \194\183\194\183\194\183, list[#list]. The default value for pos is #list+1, so that a call table.insert(t,x) inserts x at the end of list t.",type="function",argsDisplay="list, [pos,] value",args=_[219],link="https://www.lua.org/manual/5.2/manual.html#pdf-table.insert"}
_[76]={description="Returns the elements from the given table. This function is equivalent to",type="function",argsDisplay="list [, i [, j]]",args=_[218],link="https://www.lua.org/manual/5.2/manual.html#pdf-table.unpack"}
_[75]={description="Removes from list the element at position pos, returning the value of the removed element. When pos is an integer between 1 and #list, it shifts down the elements list[pos+1], list[pos+2], \194\183\194\183\194\183, list[#list] and erases element list[#list]; The index pos can also be 0 when #list is 0, or #list + 1; in those cases, the function erases the element list[pos].",type="function",argsDisplay="list [, pos]",args=_[217],link="https://www.lua.org/manual/5.2/manual.html#pdf-table.remove"}
_[74]={description="Sorts list elements in a given order, in-place, from list[1] to list[#list]. If comp is given, then it must be a function that receives two list elements and returns true when the first element must come before the second in the final order (so that not comp(list[i+1],list[i]) will be true after the sort). If comp is not given, then the standard Lua operator < is used instead.",type="function",argsDisplay="list [, comp]",args=_[216],link="https://www.lua.org/manual/5.2/manual.html#pdf-table.sort"}
_[73]={description="Given a list where all elements are strings or numbers, returns the string list[i]..sep..list[i+1] \194\183\194\183\194\183 sep..list[j]. The default value for sep is the empty string, the default for i is 1, and the default for j is #list. If i is greater than j, returns the empty string.",type="function",argsDisplay="list [, sep [, i [, j]]]",args=_[215],link="https://www.lua.org/manual/5.2/manual.html#pdf-table.concat"}
_[72]={__index=_[214]}
_[71]={}
_[70]={}
_[69]={_[213]}
_[68]={_[212]}
_[67]={atan2=_[183],max=_[184],fmod=_[185],huge=_[186],abs=_[187],sin=_[188],ldexp=_[189],floor=_[190],pow=_[191],tan=_[192],random=_[193],sqrt=_[194],cosh=_[195],atan=_[196],acos=_[197],exp=_[198],rad=_[199],randomseed=_[200],asin=_[201],sinh=_[202],pi=_[203],ceil=_[204],modf=_[205],min=_[206],frexp=_[207],log=_[208],tanh=_[209],deg=_[210],cos=_[211]}
_[66]={execute=_[172],difftime=_[173],date=_[174],remove=_[175],rename=_[176],getenv=_[177],time=_[178],exit=_[179],tmpname=_[180],setlocale=_[181],clock=_[182]}
_[65]={_[170],_[171]}
_[64]={_[169]}
_[63]={_[168]}
_[62]={_[167]}
_[61]={_[166]}
_[60]={_[165]}
_[59]={_[164]}
_[58]={getmetatable=_[148],upvaluejoin=_[149],debug=_[150],setmetatable=_[151],traceback=_[152],setupvalue=_[153],getuservalue=_[154],upvalueid=_[155],setlocal=_[156],getregistry=_[157],getinfo=_[158],gethook=_[159],getlocal=_[160],setuservalue=_[161],getupvalue=_[162],sethook=_[163]}
_[57]={_[147]}
_[56]={upper=_[133],format=_[134],char=_[135],byte=_[136],reverse=_[137],find=_[138],gmatch=_[139],lower=_[140],match=_[141],gsub=_[142],rep=_[143],sub=_[144],len=_[145],dump=_[146]}
_[55]={_[132]}
_[54]={open=_[118],input=_[119],popen=_[120],tmpfile=_[121],write=_[122],close=_[123],stderr=_[124],type=_[125],read=_[126],flush=_[127],stdin=_[128],lines=_[129],stdout=_[130],output=_[131]}
_[53]={cpath=_[110],searchers=_[111],config=_[112],loaded=_[113],searchpath=_[114],preload=_[115],path=_[116],loadlib=_[117]}
_[52]={_[109]}
_[51]={_[108]}
_[50]={extract=_[96],rshift=_[97],bnot=_[98],band=_[99],replace=_[100],btest=_[101],bor=_[102],arshift=_[103],lshift=_[104],rrotate=_[105],bxor=_[106],lrotate=_[107]}
_[49]={_[94],_[95]}
_[48]={_[93]}
_[47]={}
_[46]={_[91],_[92]}
_[45]={running=_[85],create=_[86],status=_[87],yield=_[88],wrap=_[89],resume=_[90]}
_[44]={_[84]}
_[43]={_[82],_[83]}
_[42]={_[79],_[80],_[81]}
_[41]={concat=_[73],sort=_[74],remove=_[75],unpack=_[76],insert=_[77],pack=_[78]}
_[40]={}
_[39]={}
_[38]={type="table",fields=_[72]}
_[37]={description="Similar to load, but gets the chunk from file filename or from the standard input, if no file name is given.",type="function",argsDisplay="[filename [, mode [, env]]]",args=_[71],link="https://www.lua.org/manual/5.2/manual.html#pdf-loadfile"}
_[36]={description="This function is a generic interface to the garbage collector. It performs different functions according to its first argument, opt:",type="function",argsDisplay="[opt [, arg]]",args=_[70],link="https://www.lua.org/manual/5.2/manual.html#pdf-collectgarbage"}
_[35]={description="When called with no base, tonumber tries to convert its argument to a number. If the argument is already a number or a string convertible to a number (see \194\1673.4.2), then tonumber returns this number; otherwise, it returns nil.",type="function",argsDisplay="e [, base]",args=_[69],link="https://www.lua.org/manual/5.2/manual.html#pdf-tonumber"}
_[34]={description="If index is a number, returns all arguments after argument number index; a negative number indexes from the end (-1 is the last argument). Otherwise, index must be the string \"#\", and select returns the total number of extra arguments it received.",type="function",argsDisplay="index, \194\183\194\183\194\183",args=_[68],link="https://www.lua.org/manual/5.2/manual.html#pdf-select"}
_[33]={description="This library is an interface to the standard C math library. It provides all its functions inside the table math.",link="https://www.lua.org/manual/5.2/manual.html#6.6",type="table",fields=_[67]}
_[32]={description="This library is implemented through table os.",link="https://www.lua.org/manual/5.2/manual.html#6.9",type="table",fields=_[66]}
_[31]={description="Gets the real value of table[index], without invoking any metamethod. table must be a table; index may be any value.",type="function",argsDisplay="table, index",args=_[65],link="https://www.lua.org/manual/5.2/manual.html#pdf-rawget"}
_[30]={description="Loads a chunk.",type="function",argsDisplay="ld [, source [, mode [, env]]]",args=_[64],link="https://www.lua.org/manual/5.2/manual.html#pdf-load"}
_[29]={description="Returns the type of its only argument, coded as a string. The possible results of this function are \"nil\" (a string, not the value nil), \"number\", \"string\", \"boolean\", \"table\", \"function\", \"thread\", and \"userdata\".",type="function",argsDisplay="v",args=_[63],link="https://www.lua.org/manual/5.2/manual.html#pdf-type"}
_[28]={description="If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a \"__metatable\" field, returns the associated value. Otherwise, returns the metatable of the given object.",type="function",argsDisplay="object",args=_[62],link="https://www.lua.org/manual/5.2/manual.html#pdf-getmetatable"}
_[27]={description="Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. next returns the next index of the table and its associated value. When called with nil as its second argument, next returns an initial index and its associated value. When called with the last index, or with nil in an empty table, next returns nil. If the second argument is absent, then it is interpreted as nil. In particular, you can use next(t) to check whether a table is empty.",type="function",argsDisplay="table [, index]",args=_[61],link="https://www.lua.org/manual/5.2/manual.html#pdf-next"}
_[26]={description="If t has a metamethod __pairs, calls it with t as argument and returns the first three results from the call.",type="function",argsDisplay="t",args=_[60],link="https://www.lua.org/manual/5.2/manual.html#pdf-pairs"}
_[25]={description="Returns the length of the object v, which must be a table or a string, without invoking any metamethod. Returns an integer number.",type="function",argsDisplay="v",args=_[59],link="https://www.lua.org/manual/5.2/manual.html#pdf-rawlen"}
_[24]={description="This library provides the functionality of the debug interface (\194\1674.9) to Lua programs. You should exert care when using this library. Several of its functions violate basic assumptions about Lua code (e.g., that variables local to a function cannot be accessed from outside; that userdata metatables cannot be changed by Lua code; that Lua programs do not crash) and therefore can compromise otherwise secure code. Moreover, some functions in this library may be slow.",link="https://www.lua.org/manual/5.2/manual.html#6.10",type="table",fields=_[58]}
_[23]={description="Terminates the last protected function called and returns message as the error message. Function error never returns.",type="function",argsDisplay="message [, level]",args=_[57],link="https://www.lua.org/manual/5.2/manual.html#pdf-error"}
_[22]={description="This library provides generic functions for string manipulation, such as finding and extracting substrings, and pattern matching. When indexing a string in Lua, the first character is at position 1 (not at 0, as in C). Indices are allowed to be negative and are interpreted as indexing backwards, from the end of the string. Thus, the last character is at position -1, and so on.",link="https://www.lua.org/manual/5.2/manual.html#6.4",type="table",fields=_[56]}
_[21]={description="Issues an error when the value of its argument v is false (i.e., nil or false); otherwise, returns all its arguments. message is an error message; when absent, it defaults to \"assertion failed!\"",type="function",argsDisplay="v [, message]",args=_[55],link="https://www.lua.org/manual/5.2/manual.html#pdf-assert"}
_[20]={description="The I/O library provides two different styles for file manipulation. The first one uses implicit file descriptors; that is, there are operations to set a default input file and a default output file, and all input/output operations are over these default files. The second style uses explicit file descriptors.",link="https://www.lua.org/manual/5.2/manual.html#6.8",type="table",fields=_[54]}
_[19]={description="The package library provides basic facilities for loading modules in Lua. It exports one function directly in the global environment: require. Everything else is exported in a table package.",link="https://www.lua.org/manual/5.2/manual.html#6.3",type="table",fields=_[53]}
_[18]={description="If t has a metamethod __ipairs, calls it with t as argument and returns the first three results from the call.",type="function",argsDisplay="t",args=_[52],link="https://www.lua.org/manual/5.2/manual.html#pdf-ipairs"}
_[17]={description="Loads the given module. The function starts by looking into the package.loaded table to determine whether modname is already loaded. If it is, then require returns the value stored at package.loaded[modname]. Otherwise, it tries to find a loader for the module.",type="function",argsDisplay="modname",args=_[51],link="https://www.lua.org/manual/5.2/manual.html#pdf-require"}
_[16]={description="This library provides bitwise operations. It provides all its functions inside the table bit32.",link="https://www.lua.org/manual/5.2/manual.html#6.7",type="table",fields=_[50]}
_[15]={description="Checks whether v1 is equal to v2, without invoking any metamethod. Returns a boolean.",type="function",argsDisplay="v1, v2",args=_[49],link="https://www.lua.org/manual/5.2/manual.html#pdf-rawequal"}
_[14]={description="Calls function f with the given arguments in protected mode. This means that any error inside f is not propagated; instead, pcall catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, pcall also returns all results from the call, after this first result. In case of any error, pcall returns false plus the error message.",type="function",argsDisplay="f [, arg1, \194\183\194\183\194\183]",args=_[48],link="https://www.lua.org/manual/5.2/manual.html#pdf-pcall"}
_[13]={description="Receives any number of arguments and prints their values to stdout, using the tostring function to convert each argument to a string. print is not intended for formatted output, but only as a quick way to show a value, for instance for debugging. For complete control over the output, use string.format and io.write.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[47],link="https://www.lua.org/manual/5.2/manual.html#pdf-print"}
_[12]={description="This function is similar to pcall, except that it sets a new message handler msgh.",type="function",argsDisplay="f, msgh [, arg1, \194\183\194\183\194\183]",args=_[46],link="https://www.lua.org/manual/5.2/manual.html#pdf-xpcall"}
_[11]={description="The operations related to coroutines comprise a sub-library of the basic library and come inside the table coroutine. See \194\1672.6 for a general description of coroutines.",link="https://www.lua.org/manual/5.2/manual.html#6.2",type="table",fields=_[45]}
_[10]={description="Receives a value of any type and converts it to a string in a reasonable format. (For complete control of how numbers are converted, use string.format.)",type="function",argsDisplay="v",args=_[44],link="https://www.lua.org/manual/5.2/manual.html#pdf-tostring"}
_[9]={description="Sets the metatable for the given table. (You cannot change the metatable of other types from Lua, only from C.) If metatable is nil, removes the metatable of the given table. If the original metatable has a \"__metatable\" field, raises an error.",type="function",argsDisplay="table, metatable",args=_[43],link="https://www.lua.org/manual/5.2/manual.html#pdf-setmetatable"}
_[8]={link="https://www.lua.org/manual/5.2/manual.html#pdf-_VERSION",type="string",description="A global variable (not a function) that holds a string containing the current interpreter version. The current contents of this variable is \"Lua 5.2\"."}
_[7]={description="Sets the real value of table[index] to value, without invoking any metamethod. table must be a table, index any value different from nil and NaN, and value any Lua value.",type="function",argsDisplay="table, index, value",args=_[42],link="https://www.lua.org/manual/5.2/manual.html#pdf-rawset"}
_[6]={description="This library provides generic functions for table manipulation. It provides all its functions inside the table table.",link="https://www.lua.org/manual/5.2/manual.html#6.5",type="table",fields=_[41]}
_[5]={description="Opens the named file and executes its contents as a Lua chunk. When called without arguments, dofile executes the contents of the standard input (stdin). Returns all values returned by the chunk. In case of errors, dofile propagates the error to its caller (that is, dofile does not run in protected mode).",type="function",argsDisplay="[filename]",args=_[40],link="https://www.lua.org/manual/5.2/manual.html#pdf-dofile"}
_[4]={metatable=_[38],type="table",fields=_[39]}
_[3]={dofile=_[5],table=_[6],rawset=_[7],_VERSION=_[8],setmetatable=_[9],tostring=_[10],coroutine=_[11],xpcall=_[12],print=_[13],pcall=_[14],rawequal=_[15],bit32=_[16],require=_[17],ipairs=_[18],package=_[19],io=_[20],assert=_[21],string=_[22],error=_[23],debug=_[24],rawlen=_[25],pairs=_[26],next=_[27],getmetatable=_[28],type=_[29],load=_[30],rawget=_[31],os=_[32],math=_[33],select=_[34],tonumber=_[35],collectgarbage=_[36],loadfile=_[37]}
_[2]={file=_[4]}
_[1]={type="table",fields=_[3]}
return {global=_[1],namedTypes=_[2]}