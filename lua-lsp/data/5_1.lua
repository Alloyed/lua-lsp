local _={}
_[414]={name="self"}
_[413]={name="mode"}
_[412]={name="self"}
_[411]={name="self"}
_[410]={name="self"}
_[409]={name="self"}
_[408]={name="self"}
_[407]={name="self"}
_[406]={_[414]}
_[405]={_[412],_[413]}
_[404]={_[411]}
_[403]={_[410]}
_[402]={_[409]}
_[401]={_[408]}
_[400]={_[407]}
_[399]={description="Closes file. Note that files are automatically closed when their handles are garbage collected, but that takes an unpredictable amount of time to happen.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[406],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:close"}
_[398]={description="Sets the buffering mode for an output file. There are three available modes:",type="function",argsDisplayOmitSelf="mode [, size]",argsDisplay="self, mode [, size]",args=_[405],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:setvbuf"}
_[397]={description="Returns an iterator function that, each time it is called, returns a new line from the file. Therefore, the construction",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[404],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:lines"}
_[396]={description="Writes the value of each of its arguments to the file. The arguments must be strings or numbers. To write other values, use tostring or string.format before write.",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[403],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:write"}
_[395]={description="Sets and gets the file position, measured from the beginning of the file, to the position given by offset plus a base specified by the string whence, as follows:",type="function",argsDisplayOmitSelf="[whence] [, offset]",argsDisplay="self, [whence] [, offset]",args=_[402],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:seek"}
_[394]={description="Reads the file file, according to the given formats, which specify what to read. For each format, the function returns a string (or a number) with the characters read, or nil if it cannot read data with the specified format. When called without formats, it uses a default format that reads the entire next line (see below).",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[401],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:read"}
_[393]={description="Saves any written data to file.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[400],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:flush"}
_[392]={name="x"}
_[391]={name="x"}
_[390]={name="x"}
_[389]={name="x"}
_[388]={name="x"}
_[387]={name="x"}
_[386]={name="x"}
_[385]={name="x"}
_[384]={name="x"}
_[383]={name="x"}
_[382]={name="x"}
_[381]={name="x"}
_[380]={name="x"}
_[379]={name="x"}
_[378]={name="x"}
_[377]={name="x"}
_[376]={name="x"}
_[375]={name="x"}
_[374]={name="y"}
_[373]={name="x"}
_[372]={name="x"}
_[371]={name="e"}
_[370]={name="m"}
_[369]={name="x"}
_[368]={name="x"}
_[367]={name="x"}
_[366]={name="y"}
_[365]={name="x"}
_[364]={name="x"}
_[363]={name="x"}
_[362]={name="y"}
_[361]={name="locale"}
_[360]={name="varname"}
_[359]={name="newname"}
_[358]={name="oldname"}
_[357]={name="filename"}
_[356]={name="t1"}
_[355]={name="t2"}
_[354]={name="o"}
_[353]={name="up"}
_[352]={name="func"}
_[351]={name="table"}
_[350]={name="object"}
_[349]={name="table"}
_[348]={name="object"}
_[347]={name="value"}
_[346]={name="up"}
_[345]={name="func"}
_[344]={name="object"}
_[343]={name="function"}
_[342]={name="s"}
_[341]={name="i"}
_[340]={name="s"}
_[339]={name="n"}
_[338]={name="s"}
_[337]={name="repl"}
_[336]={name="pattern"}
_[335]={name="s"}
_[334]={name="pattern"}
_[333]={name="s"}
_[332]={name="s"}
_[331]={name="pattern"}
_[330]={name="s"}
_[329]={name="pattern"}
_[328]={name="s"}
_[327]={name="s"}
_[326]={name="s"}
_[325]={name="formatstring"}
_[324]={name="s"}
_[323]={name="obj"}
_[322]={type="ref",name="file"}
_[321]={name="prog"}
_[320]={type="ref",name="file"}
_[319]={name="filename"}
_[318]={type="ref",name="file"}
_[317]={name="funcname"}
_[316]={name="libname"}
_[315]={name="module"}
_[314]={name="co"}
_[313]={name="f"}
_[312]={name="co"}
_[311]={name="f"}
_[310]={name="table"}
_[309]={name="table"}
_[308]={name="table"}
_[307]={name="table"}
_[306]={name="table"}
_[305]={flush=_[393],read=_[394],seek=_[395],write=_[396],lines=_[397],setvbuf=_[398],close=_[399]}
_[304]={_[392]}
_[303]={_[391]}
_[302]={_[390]}
_[301]={_[389]}
_[300]={_[388]}
_[299]={_[387]}
_[298]={_[386]}
_[297]={_[385]}
_[296]={_[384]}
_[295]={_[383]}
_[294]={_[382]}
_[293]={_[381]}
_[292]={_[380]}
_[291]={_[379]}
_[290]={_[378]}
_[289]={_[377]}
_[288]={_[376]}
_[287]={}
_[286]={_[375]}
_[285]={_[373],_[374]}
_[284]={_[372]}
_[283]={_[370],_[371]}
_[282]={_[369]}
_[281]={_[368]}
_[280]={_[367]}
_[279]={_[365],_[366]}
_[278]={_[364]}
_[277]={_[362],_[363]}
_[276]={}
_[275]={_[361]}
_[274]={}
_[273]={}
_[272]={}
_[271]={_[360]}
_[270]={_[358],_[359]}
_[269]={_[357]}
_[268]={}
_[267]={_[355],_[356]}
_[266]={}
_[265]={}
_[264]={_[354]}
_[263]={_[352],_[353]}
_[262]={}
_[261]={}
_[260]={}
_[259]={}
_[258]={}
_[257]={_[350],_[351]}
_[256]={_[348],_[349]}
_[255]={_[345],_[346],_[347]}
_[254]={}
_[253]={}
_[252]={_[344]}
_[251]={_[343]}
_[250]={_[342]}
_[249]={_[340],_[341]}
_[248]={_[338],_[339]}
_[247]={_[335],_[336],_[337]}
_[246]={_[333],_[334]}
_[245]={_[332]}
_[244]={_[330],_[331]}
_[243]={_[328],_[329]}
_[242]={_[327]}
_[241]={_[326]}
_[240]={}
_[239]={_[325]}
_[238]={_[324]}
_[237]={}
_[236]={}
_[235]={}
_[234]={}
_[233]={_[323]}
_[232]={}
_[231]={}
_[230]={}
_[229]={_[322]}
_[228]={_[321]}
_[227]={_[320]}
_[226]={}
_[225]={_[319]}
_[224]={_[318]}
_[223]={_[316],_[317]}
_[222]={_[315]}
_[221]={_[314]}
_[220]={_[313]}
_[219]={}
_[218]={_[312]}
_[217]={_[311]}
_[216]={}
_[215]={_[310]}
_[214]={_[309]}
_[213]={_[308]}
_[212]={_[307]}
_[211]={_[306]}
_[210]={type="table",fields=_[305]}
_[209]={name="v"}
_[208]={name="t"}
_[207]={name="string"}
_[206]={name="index"}
_[205]={name="table"}
_[204]={name="f"}
_[203]={name="e"}
_[202]={name="func"}
_[201]={name="list"}
_[200]={name="e"}
_[199]={description="Returns the cosine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[304],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.cos"}
_[198]={description="Returns the angle x (given in radians) in degrees.",type="function",argsDisplay="x",args=_[303],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.deg"}
_[197]={description="Returns the hyperbolic tangent of x.",type="function",argsDisplay="x",args=_[302],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.tanh"}
_[196]={description="Returns the natural logarithm of x.",type="function",argsDisplay="x",args=_[301],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.log"}
_[195]={description="Returns m and e such that x = m2e, e is an integer and the absolute value of m is in the range [0.5, 1) (or zero when x is zero).",type="function",argsDisplay="x",args=_[300],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.frexp"}
_[194]={description="Returns the base-10 logarithm of x.",type="function",argsDisplay="x",args=_[299],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.log10"}
_[193]={description="Returns the minimum value among its arguments.",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[298],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.min"}
_[192]={description="Returns the smallest integer larger than or equal to x.",type="function",argsDisplay="x",args=_[297],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.ceil"}
_[191]={description="Returns two numbers, the integral part of x and the fractional part of x.",type="function",argsDisplay="x",args=_[296],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.modf"}
_[190]={description="Returns the hyperbolic sine of x.",type="function",argsDisplay="x",args=_[295],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.sinh"}
_[189]={description="Returns the arc sine of x (in radians).",type="function",argsDisplay="x",args=_[294],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.asin"}
_[188]={description="Returns the angle x (given in degrees) in radians.",type="function",argsDisplay="x",args=_[293],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.rad"}
_[187]={description="Sets x as the \"seed\" for the pseudo-random generator: equal seeds produce equal sequences of numbers.",type="function",argsDisplay="x",args=_[292],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.randomseed"}
_[186]={description="Returns the value ex.",type="function",argsDisplay="x",args=_[291],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.exp"}
_[185]={description="Returns the arc cosine of x (in radians).",type="function",argsDisplay="x",args=_[290],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.acos"}
_[184]={description="Returns the arc tangent of x (in radians).",type="function",argsDisplay="x",args=_[289],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.atan"}
_[183]={description="Returns the hyperbolic cosine of x.",type="function",argsDisplay="x",args=_[288],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.cosh"}
_[182]={link="https://www.lua.org/manual/5.1/manual.html#pdf-math.pi",type="number",description="The value of pi."}
_[181]={description="This function is an interface to the simple pseudo-random generator function rand provided by ANSI C. (No guarantees can be given for its statistical properties.)",type="function",argsDisplay="[m [, n]]",args=_[287],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.random"}
_[180]={description="Returns the square root of x. (You can also use the expression x^0.5 to compute this value.)",type="function",argsDisplay="x",args=_[286],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.sqrt"}
_[179]={description="Returns xy. (You can also use the expression x^y to compute this value.)",type="function",argsDisplay="x, y",args=_[285],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.pow"}
_[178]={description="Returns the largest integer smaller than or equal to x.",type="function",argsDisplay="x",args=_[284],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.floor"}
_[177]={description="Returns m2e (e should be an integer).",type="function",argsDisplay="m, e",args=_[283],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.ldexp"}
_[176]={description="Returns the sine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[282],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.sin"}
_[175]={description="Returns the absolute value of x.",type="function",argsDisplay="x",args=_[281],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.abs"}
_[174]={description="Returns the tangent of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[280],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.tan"}
_[173]={description="Returns the remainder of the division of x by y that rounds the quotient towards zero.",type="function",argsDisplay="x, y",args=_[279],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.fmod"}
_[172]={link="https://www.lua.org/manual/5.1/manual.html#pdf-math.huge",type="unknown",description="The value HUGE_VAL, a value larger than or equal to any other numerical value."}
_[171]={description="Returns the maximum value among its arguments.",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[278],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.max"}
_[170]={description="Returns the arc tangent of y/x (in radians), but uses the signs of both parameters to find the quadrant of the result. (It also handles correctly the case of x being zero.)",type="function",argsDisplay="y, x",args=_[277],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.atan2"}
_[169]={description="Returns an approximation of the amount in seconds of CPU time used by the program.",type="function",argsDisplay="",args=_[276],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.clock"}
_[168]={description="Sets the current locale of the program. locale is a string specifying a locale; category is an optional string describing which category to change: \"all\", \"collate\", \"ctype\", \"monetary\", \"numeric\", or \"time\"; the default category is \"all\". The function returns the name of the new locale, or nil if the request cannot be honored.",type="function",argsDisplay="locale [, category]",args=_[275],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.setlocale"}
_[167]={description="Returns a string with a file name that can be used for a temporary file. The file must be explicitly opened before its use and explicitly removed when no longer needed.",type="function",argsDisplay="",args=_[274],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.tmpname"}
_[166]={description="Calls the C function exit, with an optional code, to terminate the host program. The default value for code is the success code.",type="function",argsDisplay="[code]",args=_[273],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.exit"}
_[165]={description="Returns the current time when called without arguments, or a time representing the date and time specified by the given table. This table must have fields year, month, and day, and may have fields hour, min, sec, and isdst (for a description of these fields, see the os.date function).",type="function",argsDisplay="[table]",args=_[272],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.time"}
_[164]={description="Returns the value of the process environment variable varname, or nil if the variable is not defined.",type="function",argsDisplay="varname",args=_[271],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.getenv"}
_[163]={description="Renames file or directory named oldname to newname. If this function fails, it returns nil, plus a string describing the error.",type="function",argsDisplay="oldname, newname",args=_[270],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.rename"}
_[162]={description="Deletes the file or directory with the given name. Directories must be empty to be removed. If this function fails, it returns nil, plus a string describing the error.",type="function",argsDisplay="filename",args=_[269],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.remove"}
_[161]={description="Returns a string or a table containing date and time, formatted according to the given string format.",type="function",argsDisplay="[format [, time]]",args=_[268],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.date"}
_[160]={description="Returns the number of seconds from time t1 to time t2. In POSIX, Windows, and some other systems, this value is exactly t2-t1.",type="function",argsDisplay="t2, t1",args=_[267],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.difftime"}
_[159]={description="This function is equivalent to the C function system. It passes command to be executed by an operating system shell. It returns a status code, which is system-dependent. If command is absent, then it returns nonzero if a shell is available and zero otherwise.",type="function",argsDisplay="[command]",args=_[266],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.execute"}
_[158]={name="v"}
_[157]={name="object"}
_[156]={name="table"}
_[155]={name="t"}
_[154]={description="Sets the given function as a hook. The string mask and the number count describe when the hook will be called. The string mask may have the following characters, with the given meaning:",type="function",argsDisplay="[thread,] hook, mask [, count]",args=_[265],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.sethook"}
_[153]={description="Returns the environment of object o.",type="function",argsDisplay="o",args=_[264],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getfenv"}
_[152]={description="This function returns the name and the value of the upvalue with index up of the function func. The function returns nil if there is no upvalue with the given index.",type="function",argsDisplay="func, up",args=_[263],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getupvalue"}
_[151]={description="This function returns the name and the value of the local variable with index local of the function at level level of the stack. (The first parameter or local variable has index 1, and so on, until the last active local variable.) The function returns nil if there is no local variable with the given index, and raises an error when called with a level out of range. (You can call debug.getinfo to check whether the level is valid.)",type="function",argsDisplay="[thread,] level, local",args=_[262],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getlocal"}
_[150]={description="Returns the current hook settings of the thread, as three values: the current hook function, the current hook mask, and the current hook count (as set by the debug.sethook function).",type="function",argsDisplay="[thread]",args=_[261],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.gethook"}
_[149]={description="Returns a table with information about a function. You can give the function directly, or you can give a number as the value of function, which means the function running at level function of the call stack of the given thread: level 0 is the current function (getinfo itself); level 1 is the function that called getinfo; and so on. If function is a number larger than the number of active functions, then getinfo returns nil.",type="function",argsDisplay="[thread,] function [, what]",args=_[260],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getinfo"}
_[148]={description="Returns the registry table (see \194\1673.5).",type="function",argsDisplay="",args=_[259],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getregistry"}
_[147]={description="This function assigns the value value to the local variable with index local of the function at level level of the stack. The function returns nil if there is no local variable with the given index, and raises an error when called with a level out of range. (You can call getinfo to check whether the level is valid.) Otherwise, it returns the name of the local variable.",type="function",argsDisplay="[thread,] level, local, value",args=_[258],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.setlocal"}
_[146]={description="Sets the metatable for the given object to the given table (which can be nil).",type="function",argsDisplay="object, table",args=_[257],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.setmetatable"}
_[145]={description="Sets the environment of the given object to the given table. Returns object.",type="function",argsDisplay="object, table",args=_[256],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.setfenv"}
_[144]={description="This function assigns the value value to the upvalue with index up of the function func. The function returns nil if there is no upvalue with the given index. Otherwise, it returns the name of the upvalue.",type="function",argsDisplay="func, up, value",args=_[255],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.setupvalue"}
_[143]={description="Returns a string with a traceback of the call stack. An optional message string is appended at the beginning of the traceback. An optional level number tells at which level to start the traceback (default is 1, the function calling traceback).",type="function",argsDisplay="[thread,] [message [, level]]",args=_[254],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.traceback"}
_[142]={description="Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.",type="function",argsDisplay="",args=_[253],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.debug"}
_[141]={description="Returns the metatable of the given object or nil if it does not have a metatable.",type="function",argsDisplay="object",args=_[252],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getmetatable"}
_[140]={name="message"}
_[139]={description="Returns a string containing a binary representation of the given function, so that a later loadstring on this string returns a copy of the function. function must be a Lua function without upvalues.",type="function",argsDisplay="function",args=_[251],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.dump"}
_[138]={description="Receives a string and returns its length. The empty string \"\" has length 0. Embedded zeros are counted, so \"a\\000bc\\000\" has length 5.",type="function",argsDisplay="s",args=_[250],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.len"}
_[137]={description="Returns the substring of s that starts at i and continues until j; i and j can be negative. If j is absent, then it is assumed to be equal to -1 (which is the same as the string length). In particular, the call string.sub(s,1,j) returns a prefix of s with length j, and string.sub(s, -i) returns a suffix of s with length i.",type="function",argsDisplay="s, i [, j]",args=_[249],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.sub"}
_[136]={description="Returns a string that is the concatenation of n copies of the string s.",type="function",argsDisplay="s, n",args=_[248],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.rep"}
_[135]={description="Returns a copy of s in which all (or the first n, if given) occurrences of the pattern have been replaced by a replacement string specified by repl, which can be a string, a table, or a function. gsub also returns, as its second value, the total number of matches that occurred.",type="function",argsDisplay="s, pattern, repl [, n]",args=_[247],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.gsub"}
_[134]={description="Looks for the first match of pattern in the string s. If it finds one, then match returns the captures from the pattern; otherwise it returns nil. If pattern specifies no captures, then the whole match is returned. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative.",type="function",argsDisplay="s, pattern [, init]",args=_[246],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.match"}
_[133]={description="Receives a string and returns a copy of this string with all uppercase letters changed to lowercase. All other characters are left unchanged. The definition of what an uppercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[245],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.lower"}
_[132]={description="Returns an iterator function that, each time it is called, returns the next captures from pattern over string s. If pattern specifies no captures, then the whole match is produced in each call.",type="function",argsDisplay="s, pattern",args=_[244],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.gmatch"}
_[131]={description="Looks for the first match of pattern in the string s. If it finds a match, then find returns the indices of s where this occurrence starts and ends; otherwise, it returns nil. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative. A value of true as a fourth, optional argument plain turns off the pattern matching facilities, so the function does a plain \"find substring\" operation, with no characters in pattern being considered \"magic\". Note that if plain is given, then init must be given as well.",type="function",argsDisplay="s, pattern [, init [, plain]]",args=_[243],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.find"}
_[130]={description="Returns a string that is the string s reversed.",type="function",argsDisplay="s",args=_[242],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.reverse"}
_[129]={description="Returns the internal numerical codes of the characters s[i], s[i+1], \194\183\194\183\194\183, s[j]. The default value for i is 1; the default value for j is i.",type="function",argsDisplay="s [, i [, j]]",args=_[241],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.byte"}
_[128]={description="Receives zero or more integers. Returns a string with length equal to the number of arguments, in which each character has the internal numerical code equal to its corresponding argument.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[240],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.char"}
_[127]={description="Returns a formatted version of its variable number of arguments following the description given in its first argument (which must be a string). The format string follows the same rules as the printf family of standard C functions. The only differences are that the options/modifiers *, l, L, n, p, and h are not supported and that there is an extra option, q. The q option formats a string in a form suitable to be safely read back by the Lua interpreter: the string is written between double quotes, and all double quotes, newlines, embedded zeros, and backslashes in the string are correctly escaped when written. For instance, the call  string.format('%q', 'a string with \"quotes\" and \\n new line')",type="function",argsDisplay="formatstring, \194\183\194\183\194\183",args=_[239],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.format"}
_[126]={description="Receives a string and returns a copy of this string with all lowercase letters changed to uppercase. All other characters are left unchanged. The definition of what a lowercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[238],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.upper"}
_[125]={name="name"}
_[124]={description="Similar to io.input, but operates over the default output file.",type="function",argsDisplay="[file]",args=_[237],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.output"}
_[123]={type="ref",name="file"}
_[122]={description="Opens the given file name in read mode and returns an iterator function that, each time it is called, returns a new line from the file. Therefore, the construction",type="function",argsDisplay="[filename]",args=_[236],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.lines"}
_[121]={type="ref",name="file"}
_[120]={description="Equivalent to file:flush over the default output file.",type="function",argsDisplay="",args=_[235],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.flush"}
_[119]={description="Equivalent to io.input():read.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[234],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.read"}
_[118]={description="Checks whether obj is a valid file handle. Returns the string \"file\" if obj is an open file handle, \"closed file\" if obj is a closed file handle, or nil if obj is not a file handle.",type="function",argsDisplay="obj",args=_[233],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.type"}
_[117]={type="ref",name="file"}
_[116]={description="Equivalent to file:close(). Without a file, closes the default output file.",type="function",argsDisplay="[file]",args=_[232],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.close"}
_[115]={description="Equivalent to io.output():write.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[231],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.write"}
_[114]={description="Returns a handle for a temporary file. This file is opened in update mode and it is automatically removed when the program ends.",type="function",argsDisplay="",returnTypes=_[229],args=_[230],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.tmpfile"}
_[113]={description="Starts program prog in a separated process and returns a file handle that you can use to read data from this program (if mode is \"r\", the default) or to write data to this program (if mode is \"w\").",type="function",argsDisplay="prog [, mode]",returnTypes=_[227],args=_[228],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.popen"}
_[112]={description="When called with a file name, it opens the named file (in text mode), and sets its handle as the default input file. When called with a file handle, it simply sets this file handle as the default input file. When called without parameters, it returns the current default input file.",type="function",argsDisplay="[file]",args=_[226],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.input"}
_[111]={description="This function opens a file, in the mode specified in the string mode. It returns a new file handle, or, in case of errors, nil plus an error message.",type="function",argsDisplay="filename [, mode]",returnTypes=_[224],args=_[225],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.open"}
_[110]={description="Dynamically links the host program with the C library libname. Inside this library, looks for a function funcname and returns this function as a C function. (So, funcname must follow the protocol (see lua_CFunction)).",type="function",argsDisplay="libname, funcname",args=_[223],link="https://www.lua.org/manual/5.1/manual.html#pdf-package.loadlib"}
_[109]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.path",type="unknown",description="The path used by require to search for a Lua loader."}
_[108]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.preload",type="unknown",description="A table to store loaders for specific modules (see require)."}
_[107]={description="Sets a metatable for module with its __index field referring to the global environment, so that this module inherits values from the global environment. To be used as an option to function module.",type="function",argsDisplay="module",args=_[222],link="https://www.lua.org/manual/5.1/manual.html#pdf-package.seeall"}
_[106]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.loaded",type="unknown",description="A table used by require to control which modules are already loaded. When you require a module modname and package.loaded[modname] is not false, require simply returns the value stored there."}
_[105]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.loaders",type="unknown",description="A table used by require to control how to load modules."}
_[104]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.cpath",type="unknown",description="The path used by require to search for a C loader."}
_[103]={name="index"}
_[102]={name="table"}
_[101]={name="modname"}
_[100]={name="v2"}
_[99]={name="v1"}
_[98]={name="arg1"}
_[97]={name="f"}
_[96]={name="err"}
_[95]={name="f"}
_[94]={description="Starts or continues the execution of coroutine co. The first time you resume a coroutine, it starts running its body. The values val1, \194\183\194\183\194\183 are passed as the arguments to the body function. If the coroutine has yielded, resume restarts it; the values val1, \194\183\194\183\194\183 are passed as the results from the yield.",type="function",argsDisplay="co [, val1, \194\183\194\183\194\183]",args=_[221],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.resume"}
_[93]={description="Creates a new coroutine, with body f. f must be a Lua function. Returns a function that resumes the coroutine each time it is called. Any arguments passed to the function behave as the extra arguments to resume. Returns the same values returned by resume, except the first boolean. In case of error, propagates the error.",type="function",argsDisplay="f",args=_[220],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.wrap"}
_[92]={description="Suspends the execution of the calling coroutine. The coroutine cannot be running a C function, a metamethod, or an iterator. Any arguments to yield are passed as extra results to resume.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[219],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.yield"}
_[91]={description="Returns the status of coroutine co, as a string: \"running\", if the coroutine is running (that is, it called status); \"suspended\", if the coroutine is suspended in a call to yield, or if it has not started running yet; \"normal\" if the coroutine is active but not running (that is, it has resumed another coroutine); and \"dead\" if the coroutine has finished its body function, or if it has stopped with an error.",type="function",argsDisplay="co",args=_[218],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.status"}
_[90]={description="Creates a new coroutine, with body f. f must be a Lua function. Returns this new coroutine, an object with type \"thread\".",type="function",argsDisplay="f",args=_[217],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.create"}
_[89]={description="Returns the running coroutine, or nil when called by the main thread.",type="function",argsDisplay="",args=_[216],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.running"}
_[88]={name="metatable"}
_[87]={name="table"}
_[86]={name="value"}
_[85]={name="index"}
_[84]={name="table"}
_[83]={description="Removes from table the element at position pos, shifting down other elements to close the space, if necessary. Returns the value of the removed element. The default value for pos is n, where n is the length of the table, so that a call table.remove(t) removes the last element of table t.",type="function",argsDisplay="table [, pos]",args=_[215],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.remove"}
_[82]={description="Inserts element value at position pos in table, shifting up other elements to open space, if necessary. The default value for pos is n+1, where n is the length of the table (see \194\1672.5.5), so that a call table.insert(t,x) inserts x at the end of table t.",type="function",argsDisplay="table, [pos,] value",args=_[214],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.insert"}
_[81]={description="Sorts table elements in a given order, in-place, from table[1] to table[n], where n is the length of the table. If comp is given, then it must be a function that receives two table elements, and returns true when the first is less than the second (so that not comp(a[i+1],a[i]) will be true after the sort). If comp is not given, then the standard Lua operator < is used instead.",type="function",argsDisplay="table [, comp]",args=_[213],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.sort"}
_[80]={description="Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices. (To do its job this function does a linear traversal of the whole table.)",type="function",argsDisplay="table",args=_[212],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.maxn"}
_[79]={description="Given an array where all elements are strings or numbers, returns table[i]..sep..table[i+1] \194\183\194\183\194\183 sep..table[j]. The default value for sep is the empty string, the default for i is 1, and the default for j is the length of the table. If i is greater than j, returns the empty string.",type="function",argsDisplay="table [, sep [, i [, j]]]",args=_[211],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.concat"}
_[78]={__index=_[210]}
_[77]={_[209]}
_[76]={_[208]}
_[75]={_[207]}
_[74]={_[206]}
_[73]={_[204],_[205]}
_[72]={}
_[71]={_[203]}
_[70]={_[202]}
_[69]={_[201]}
_[68]={_[200]}
_[67]={atan2=_[170],max=_[171],huge=_[172],fmod=_[173],tan=_[174],abs=_[175],sin=_[176],ldexp=_[177],floor=_[178],pow=_[179],sqrt=_[180],random=_[181],pi=_[182],cosh=_[183],atan=_[184],acos=_[185],exp=_[186],randomseed=_[187],rad=_[188],asin=_[189],sinh=_[190],modf=_[191],ceil=_[192],min=_[193],log10=_[194],frexp=_[195],log=_[196],tanh=_[197],deg=_[198],cos=_[199]}
_[66]={execute=_[159],difftime=_[160],date=_[161],remove=_[162],rename=_[163],getenv=_[164],time=_[165],exit=_[166],tmpname=_[167],setlocale=_[168],clock=_[169]}
_[65]={_[158]}
_[64]={_[157]}
_[63]={_[156]}
_[62]={_[155]}
_[61]={}
_[60]={getmetatable=_[141],debug=_[142],traceback=_[143],setupvalue=_[144],setfenv=_[145],setmetatable=_[146],setlocal=_[147],getregistry=_[148],getinfo=_[149],gethook=_[150],getlocal=_[151],getupvalue=_[152],getfenv=_[153],sethook=_[154]}
_[59]={_[140]}
_[58]={upper=_[126],format=_[127],char=_[128],byte=_[129],reverse=_[130],find=_[131],gmatch=_[132],lower=_[133],match=_[134],gsub=_[135],rep=_[136],sub=_[137],len=_[138],dump=_[139]}
_[57]={_[125]}
_[56]={open=_[111],input=_[112],popen=_[113],tmpfile=_[114],write=_[115],close=_[116],stderr=_[117],type=_[118],read=_[119],flush=_[120],stdin=_[121],lines=_[122],stdout=_[123],output=_[124]}
_[55]={cpath=_[104],loaders=_[105],loaded=_[106],seeall=_[107],preload=_[108],path=_[109],loadlib=_[110]}
_[54]={_[102],_[103]}
_[53]={_[101]}
_[52]={_[99],_[100]}
_[51]={_[97],_[98]}
_[50]={}
_[49]={_[95],_[96]}
_[48]={running=_[89],create=_[90],status=_[91],yield=_[92],wrap=_[93],resume=_[94]}
_[47]={}
_[46]={_[87],_[88]}
_[45]={_[84],_[85],_[86]}
_[44]={concat=_[79],maxn=_[80],sort=_[81],insert=_[82],remove=_[83]}
_[43]={}
_[42]={}
_[41]={type="table",fields=_[78]}
_[40]={description="Issues an error when the value of its argument v is false (i.e., nil or false); otherwise, returns all its arguments. message is an error message; when absent, it defaults to \"assertion failed!\"",type="function",argsDisplay="v [, message]",args=_[77],link="https://www.lua.org/manual/5.1/manual.html#pdf-assert"}
_[39]={description="Returns three values: an iterator function, the table t, and 0, so that the construction",type="function",argsDisplay="t",args=_[76],link="https://www.lua.org/manual/5.1/manual.html#pdf-ipairs"}
_[38]={description="Similar to load, but gets the chunk from the given string.",type="function",argsDisplay="string [, chunkname]",args=_[75],link="https://www.lua.org/manual/5.1/manual.html#pdf-loadstring"}
_[37]={description="If index is a number, returns all arguments after argument number index. Otherwise, index must be the string \"#\", and select returns the total number of extra arguments it received.",type="function",argsDisplay="index, \194\183\194\183\194\183",args=_[74],link="https://www.lua.org/manual/5.1/manual.html#pdf-select"}
_[36]={description="Sets the environment to be used by the given function. f can be a Lua function or a number that specifies the function at that stack level: Level 1 is the function calling setfenv. setfenv returns the given function.",type="function",argsDisplay="f, table",args=_[73],link="https://www.lua.org/manual/5.1/manual.html#pdf-setfenv"}
_[35]={description="Similar to load, but gets the chunk from file filename or from the standard input, if no file name is given.",type="function",argsDisplay="[filename]",args=_[72],link="https://www.lua.org/manual/5.1/manual.html#pdf-loadfile"}
_[34]={description="Receives an argument of any type and converts it to a string in a reasonable format. For complete control of how numbers are converted, use string.format.",type="function",argsDisplay="e",args=_[71],link="https://www.lua.org/manual/5.1/manual.html#pdf-tostring"}
_[33]={description="Loads a chunk using function func to get its pieces. Each call to func must return a string that concatenates with previous results. A return of an empty string, nil, or no value signals the end of the chunk.",type="function",argsDisplay="func [, chunkname]",args=_[70],link="https://www.lua.org/manual/5.1/manual.html#pdf-load"}
_[32]={description="Returns the elements from the given table. This function is equivalent to  return list[i], list[i+1], \194\183\194\183\194\183, list[j]",type="function",argsDisplay="list [, i [, j]]",args=_[69],link="https://www.lua.org/manual/5.1/manual.html#pdf-unpack"}
_[31]={description="Tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then tonumber returns this number; otherwise, it returns nil.",type="function",argsDisplay="e [, base]",args=_[68],link="https://www.lua.org/manual/5.1/manual.html#pdf-tonumber"}
_[30]={description="This library is an interface to the standard C math library. It provides all its functions inside the table math.",link="https://www.lua.org/manual/5.1/manual.html#5.6",type="table",fields=_[67]}
_[29]={description="This library is implemented through table os.",link="https://www.lua.org/manual/5.1/manual.html#5.8",type="table",fields=_[66]}
_[28]={description="Returns the type of its only argument, coded as a string. The possible results of this function are \"nil\" (a string, not the value nil), \"number\", \"string\", \"boolean\", \"table\", \"function\", \"thread\", and \"userdata\".",type="function",argsDisplay="v",args=_[65],link="https://www.lua.org/manual/5.1/manual.html#pdf-type"}
_[27]={description="If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a \"__metatable\" field, returns the associated value. Otherwise, returns the metatable of the given object.",type="function",argsDisplay="object",args=_[64],link="https://www.lua.org/manual/5.1/manual.html#pdf-getmetatable"}
_[26]={description="Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. next returns the next index of the table and its associated value. When called with nil as its second argument, next returns an initial index and its associated value. When called with the last index, or with nil in an empty table, next returns nil. If the second argument is absent, then it is interpreted as nil. In particular, you can use next(t) to check whether a table is empty.",type="function",argsDisplay="table [, index]",args=_[63],link="https://www.lua.org/manual/5.1/manual.html#pdf-next"}
_[25]={description="Returns three values: the next function, the table t, and nil, so that the construction",type="function",argsDisplay="t",args=_[62],link="https://www.lua.org/manual/5.1/manual.html#pdf-pairs"}
_[24]={description="Returns the current environment in use by the function. f can be a Lua function or a number that specifies the function at that stack level: Level 1 is the function calling getfenv. If the given function is not a Lua function, or if f is 0, getfenv returns the global environment. The default for f is 1.",type="function",argsDisplay="[f]",args=_[61],link="https://www.lua.org/manual/5.1/manual.html#pdf-getfenv"}
_[23]={description="This library provides the functionality of the debug interface to Lua programs. You should exert care when using this library. The functions provided here should be used exclusively for debugging and similar tasks, such as profiling. Please resist the temptation to use them as a usual programming tool: they can be very slow. Moreover, several of these functions violate some assumptions about Lua code (e.g., that variables local to a function cannot be accessed from outside or that userdata metatables cannot be changed by Lua code) and therefore can compromise otherwise secure code.",link="https://www.lua.org/manual/5.1/manual.html#5.9",type="table",fields=_[60]}
_[22]={description="Terminates the last protected function called and returns message as the error message. Function error never returns.",type="function",argsDisplay="message [, level]",args=_[59],link="https://www.lua.org/manual/5.1/manual.html#pdf-error"}
_[21]={description="This library provides generic functions for string manipulation, such as finding and extracting substrings, and pattern matching. When indexing a string in Lua, the first character is at position 1 (not at 0, as in C). Indices are allowed to be negative and are interpreted as indexing backwards, from the end of the string. Thus, the last character is at position -1, and so on.",link="https://www.lua.org/manual/5.1/manual.html#5.4",type="table",fields=_[58]}
_[20]={description="Creates a module. If there is a table in package.loaded[name], this table is the module. Otherwise, if there is a global table t with the given name, this table is the module. Otherwise creates a new table t and sets it as the value of the global name and the value of package.loaded[name]. This function also initializes t._NAME with the given name, t._M with the module (t itself), and t._PACKAGE with the package name (the full module name minus last component; see below). Finally, module sets t as the new environment of the current function and the new value of package.loaded[name], so that require returns t.",type="function",argsDisplay="name [, \194\183\194\183\194\183]",args=_[57],link="https://www.lua.org/manual/5.1/manual.html#pdf-module"}
_[19]={description="The I/O library provides two different styles for file manipulation. The first one uses implicit file descriptors; that is, there are operations to set a default input file and a default output file, and all input/output operations are over these default files. The second style uses explicit file descriptors.",link="https://www.lua.org/manual/5.1/manual.html#5.7",type="table",fields=_[56]}
_[18]={description="The package library provides basic facilities for loading and building modules in Lua. It exports two of its functions directly in the global environment: require and module. Everything else is exported in a table package.",link="https://www.lua.org/manual/5.1/manual.html#5.3",type="table",fields=_[55]}
_[17]={description="Gets the real value of table[index], without invoking any metamethod. table must be a table; index may be any value.",type="function",argsDisplay="table, index",args=_[54],link="https://www.lua.org/manual/5.1/manual.html#pdf-rawget"}
_[16]={description="Loads the given module. The function starts by looking into the package.loaded table to determine whether modname is already loaded. If it is, then require returns the value stored at package.loaded[modname]. Otherwise, it tries to find a loader for the module.",type="function",argsDisplay="modname",args=_[53],link="https://www.lua.org/manual/5.1/manual.html#pdf-require"}
_[15]={description="Checks whether v1 is equal to v2, without invoking any metamethod. Returns a boolean.",type="function",argsDisplay="v1, v2",args=_[52],link="https://www.lua.org/manual/5.1/manual.html#pdf-rawequal"}
_[14]={description="Calls function f with the given arguments in protected mode. This means that any error inside f is not propagated; instead, pcall catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, pcall also returns all results from the call, after this first result. In case of any error, pcall returns false plus the error message.",type="function",argsDisplay="f, arg1, \194\183\194\183\194\183",args=_[51],link="https://www.lua.org/manual/5.1/manual.html#pdf-pcall"}
_[13]={description="Receives any number of arguments, and prints their values to stdout, using the tostring function to convert them to strings. print is not intended for formatted output, but only as a quick way to show a value, typically for debugging. For formatted output, use string.format.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[50],link="https://www.lua.org/manual/5.1/manual.html#pdf-print"}
_[12]={description="This function is similar to pcall, except that you can set a new error handler.",type="function",argsDisplay="f, err",args=_[49],link="https://www.lua.org/manual/5.1/manual.html#pdf-xpcall"}
_[11]={description="The operations related to coroutines comprise a sub-library of the basic library and come inside the table coroutine. See \194\1672.11 for a general description of coroutines.",link="https://www.lua.org/manual/5.1/manual.html#5.2",type="table",fields=_[48]}
_[10]={description="This function is a generic interface to the garbage collector. It performs different functions according to its first argument, opt:",type="function",argsDisplay="[opt [, arg]]",args=_[47],link="https://www.lua.org/manual/5.1/manual.html#pdf-collectgarbage"}
_[9]={description="Sets the metatable for the given table. (You cannot change the metatable of other types from Lua, only from C.) If metatable is nil, removes the metatable of the given table. If the original metatable has a \"__metatable\" field, raises an error.",type="function",argsDisplay="table, metatable",args=_[46],link="https://www.lua.org/manual/5.1/manual.html#pdf-setmetatable"}
_[8]={link="https://www.lua.org/manual/5.1/manual.html#pdf-_VERSION",type="string",description="A global variable (not a function) that holds a string containing the current interpreter version. The current contents of this variable is \"Lua 5.1\"."}
_[7]={description="Sets the real value of table[index] to value, without invoking any metamethod. table must be a table, index any value different from nil, and value any Lua value.",type="function",argsDisplay="table, index, value",args=_[45],link="https://www.lua.org/manual/5.1/manual.html#pdf-rawset"}
_[6]={description="This library provides generic functions for table manipulation. It provides all its functions inside the table table.",link="https://www.lua.org/manual/5.1/manual.html#5.5",type="table",fields=_[44]}
_[5]={description="Opens the named file and executes its contents as a Lua chunk. When called without arguments, dofile executes the contents of the standard input (stdin). Returns all values returned by the chunk. In case of errors, dofile propagates the error to its caller (that is, dofile does not run in protected mode).",type="function",argsDisplay="[filename]",args=_[43],link="https://www.lua.org/manual/5.1/manual.html#pdf-dofile"}
_[4]={metatable=_[41],type="table",fields=_[42]}
_[3]={dofile=_[5],table=_[6],rawset=_[7],_VERSION=_[8],setmetatable=_[9],collectgarbage=_[10],coroutine=_[11],xpcall=_[12],print=_[13],pcall=_[14],rawequal=_[15],require=_[16],rawget=_[17],package=_[18],io=_[19],module=_[20],string=_[21],error=_[22],debug=_[23],getfenv=_[24],pairs=_[25],next=_[26],getmetatable=_[27],type=_[28],os=_[29],math=_[30],tonumber=_[31],unpack=_[32],load=_[33],tostring=_[34],loadfile=_[35],setfenv=_[36],select=_[37],loadstring=_[38],ipairs=_[39],assert=_[40]}
_[2]={file=_[4]}
_[1]={type="table",fields=_[3]}
return {global=_[1],namedTypes=_[2]}