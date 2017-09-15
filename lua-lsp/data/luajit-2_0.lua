local _={}
_[591]={name="self"}
_[590]={name="mode"}
_[589]={name="self"}
_[588]={name="self"}
_[587]={name="self"}
_[586]={name="self"}
_[585]={name="self"}
_[584]={name="self"}
_[583]={name="tr"}
_[582]={name="src"}
_[581]={name="dst"}
_[580]={name="len"}
_[579]={name="src"}
_[578]={name="dst"}
_[577]={_[591]}
_[576]={_[589],_[590]}
_[575]={_[588]}
_[574]={_[587]}
_[573]={_[586]}
_[572]={_[585]}
_[571]={_[584]}
_[570]={}
_[569]={}
_[568]={}
_[567]={}
_[566]={}
_[565]={}
_[564]={}
_[563]={}
_[562]={}
_[561]={}
_[560]={}
_[559]={}
_[558]={}
_[557]={}
_[556]={}
_[555]={}
_[554]={_[583]}
_[553]={}
_[552]={}
_[551]={_[581],_[582]}
_[550]={_[578],_[579],_[580]}
_[549]={description="Closes file. Note that files are automatically closed when their handles are garbage collected, but that takes an unpredictable amount of time to happen.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[577],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:close"}
_[548]={description="Sets the buffering mode for an output file. There are three available modes:",type="function",argsDisplayOmitSelf="mode [, size]",argsDisplay="self, mode [, size]",args=_[576],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:setvbuf"}
_[547]={description="Returns an iterator function that, each time it is called, reads the file according to the given formats. When no format is given, uses \"*l\" as a default. As an example, the construction",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[575],link="https://www.lua.org/manual/5.2/manual.html#pdf-file:lines"}
_[546]={description="Writes the value of each of its arguments to the file. The arguments must be strings or numbers. To write other values, use tostring or string.format before write.",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[574],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:write"}
_[545]={description="Sets and gets the file position, measured from the beginning of the file, to the position given by offset plus a base specified by the string whence, as follows:",type="function",argsDisplayOmitSelf="[whence] [, offset]",argsDisplay="self, [whence] [, offset]",args=_[573],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:seek"}
_[544]={description="Reads the file file, according to the given formats, which specify what to read. For each format, the function returns a string (or a number) with the characters read, or nil if it cannot read data with the specified format. When called without formats, it uses a default format that reads the entire next line (see below).",type="function",argsDisplayOmitSelf="\194\183\194\183\194\183",argsDisplay="self, \194\183\194\183\194\183",args=_[572],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:read"}
_[543]={description="Saves any written data to file.",type="function",argsDisplayOmitSelf="",argsDisplay="self",args=_[571],link="https://www.lua.org/manual/5.1/manual.html#pdf-file:flush"}
_[542]={name="x"}
_[541]={name="x"}
_[540]={name="x"}
_[539]={name="x"}
_[538]={name="x"}
_[537]={name="x"}
_[536]={name="x"}
_[535]={name="x"}
_[534]={name="x"}
_[533]={name="x"}
_[532]={name="x"}
_[531]={name="x"}
_[530]={name="x"}
_[529]={name="x"}
_[528]={name="x"}
_[527]={name="x"}
_[526]={name="x"}
_[525]={name="x"}
_[524]={name="y"}
_[523]={name="x"}
_[522]={name="x"}
_[521]={name="e"}
_[520]={name="m"}
_[519]={name="x"}
_[518]={name="x"}
_[517]={name="x"}
_[516]={name="y"}
_[515]={name="x"}
_[514]={name="x"}
_[513]={name="x"}
_[512]={name="y"}
_[511]={argsDisplay="[func [, b]]",link="https://luajit.org/ext_jit.html#jit_onoff_func",args=_[570],description="Disables JIT compilation for a Lua function and flushes any already compiled code from the code cache."}
_[510]={link="https://luajit.org/ext_jit.html#jit_onoff",args=_[569],description="Turns the whole JIT compiler off."}
_[509]={argsDisplay="[func [, b]]",link="https://luajit.org/ext_jit.html#jit_onoff_func",args=_[568],description="Enables JIT compilation for a Lua function."}
_[508]={link="https://luajit.org/ext_jit.html#jit_onoff",args=_[567],description="Turns the whole JIT compiler on (default)."}
_[507]={type="function",args=_[566]}
_[506]={type="function",args=_[565]}
_[505]={type="function",args=_[564]}
_[504]={type="function",args=_[563]}
_[503]={type="function",args=_[562]}
_[502]={type="function",args=_[561]}
_[501]={type="function",args=_[560]}
_[500]={type="function",args=_[559]}
_[499]={type="function",args=_[558]}
_[498]={type="function",args=_[557]}
_[497]={type="function",args=_[556]}
_[496]={type="function",args=_[555]}
_[495]={argsDisplay="tr",link="https://luajit.org/ext_jit.html#jit_flush_tr",args=_[554],description="Flushes the root trace, specified by its number, and all of its side traces from the cache. The code for the trace will be retained as long as there are any other traces which link to it."}
_[494]={argsDisplay="[func [, b]]",link="https://luajit.org/ext_jit.html#jit_onoff_func",args=_[553],description="Flushes the code, but doesn't affect the enable/disable status."}
_[493]={link="https://luajit.org/ext_jit.html#jit_flush",args=_[552],description="Flushes the whole cache of compiled code."}
_[492]={name="locale"}
_[491]={name="varname"}
_[490]={name="newname"}
_[489]={name="oldname"}
_[488]={name="filename"}
_[487]={name="t1"}
_[486]={name="t2"}
_[485]={argsDisplay="dst, src",link="https://luajit.org/ext_ffi_api.html#ffi_copy",args=_[551],description="Copies the data pointed to by src to dst. dst is converted to a 'void *' and src is converted to a 'const void *'. The source of the copy must be a Lua string. All bytes of the string plus a zero-terminator are copied to dst."}
_[484]={argsDisplay="dst, src, len",link="https://luajit.org/ext_ffi_api.html#ffi_copy",args=_[550],description="Copies the data pointed to by src to dst. dst is converted to a 'void *' and src is converted to a 'const void *'. The number of bytes to copy is given by len."}
_[483]={name="ct"}
_[482]={name="ptr"}
_[481]={name="ct"}
_[480]={name="metatable"}
_[479]={name="ct"}
_[478]={name="name"}
_[477]={name="len"}
_[476]={name="dst"}
_[475]={name="obj"}
_[474]={name="ct"}
_[473]={name="finalizer"}
_[472]={name="cdata"}
_[471]={name="param"}
_[470]={name="ct"}
_[469]={name="field"}
_[468]={name="ct"}
_[467]={name="def"}
_[466]={name="init"}
_[465]={name="ct"}
_[464]={name="ct"}
_[463]={name="x"}
_[462]={name="x1"}
_[461]={name="n"}
_[460]={name="x"}
_[459]={name="n"}
_[458]={name="x"}
_[457]={name="n"}
_[456]={name="x"}
_[455]={name="x"}
_[454]={name="n"}
_[453]={name="x"}
_[452]={name="x1"}
_[451]={name="x"}
_[450]={name="x1"}
_[449]={name="x"}
_[448]={name="n"}
_[447]={name="x"}
_[446]={name="o"}
_[445]={name="up"}
_[444]={name="f"}
_[443]={name="n"}
_[442]={name="f"}
_[441]={name="table"}
_[440]={name="object"}
_[439]={name="value"}
_[438]={name="up"}
_[437]={name="func"}
_[436]={name="table"}
_[435]={name="object"}
_[434]={name="n2"}
_[433]={name="f2"}
_[432]={name="n1"}
_[431]={name="f1"}
_[430]={name="object"}
_[429]={name="function"}
_[428]={name="s"}
_[427]={name="i"}
_[426]={name="s"}
_[425]={name="n"}
_[424]={name="s"}
_[423]={name="repl"}
_[422]={name="pattern"}
_[421]={name="s"}
_[420]={name="pattern"}
_[419]={name="s"}
_[418]={name="s"}
_[417]={name="pattern"}
_[416]={name="s"}
_[415]={name="pattern"}
_[414]={name="s"}
_[413]={name="s"}
_[412]={name="s"}
_[411]={name="formatstring"}
_[410]={name="s"}
_[409]={name="obj"}
_[408]={type="ref",name="file"}
_[407]={name="prog"}
_[406]={type="ref",name="file"}
_[405]={name="filename"}
_[404]={type="ref",name="file"}
_[403]={name="funcname"}
_[402]={name="libname"}
_[401]={name="path"}
_[400]={name="name"}
_[399]={name="module"}
_[398]={name="co"}
_[397]={name="f"}
_[396]={name="co"}
_[395]={name="f"}
_[394]={name="table"}
_[393]={name="table"}
_[392]={name="table"}
_[391]={name="table"}
_[390]={name="table"}
_[389]={flush=_[543],read=_[544],seek=_[545],write=_[546],lines=_[547],setvbuf=_[548],close=_[549]}
_[388]={_[542]}
_[387]={_[541]}
_[386]={_[540]}
_[385]={_[539]}
_[384]={_[538]}
_[383]={_[537]}
_[382]={_[536]}
_[381]={_[535]}
_[380]={_[534]}
_[379]={_[533]}
_[378]={_[532]}
_[377]={_[531]}
_[376]={_[530]}
_[375]={_[529]}
_[374]={_[528]}
_[373]={_[527]}
_[372]={_[526]}
_[371]={}
_[370]={_[525]}
_[369]={_[523],_[524]}
_[368]={_[522]}
_[367]={_[520],_[521]}
_[366]={_[519]}
_[365]={_[518]}
_[364]={_[517]}
_[363]={_[515],_[516]}
_[362]={_[514]}
_[361]={_[512],_[513]}
_[360]={_[510],_[511]}
_[359]={_[508],_[509]}
_[358]={tracek=_[497],funcuvname=_[498],traceexitstub=_[499],ircalladdr=_[500],funcbc=_[501],traceinfo=_[502],funcinfo=_[503],tracemc=_[504],traceir=_[505],funck=_[506],tracesnap=_[507]}
_[357]={start=_[496]}
_[356]={_[493],_[494],_[495]}
_[355]={}
_[354]={_[492]}
_[353]={}
_[352]={}
_[351]={}
_[350]={_[491]}
_[349]={_[489],_[490]}
_[348]={_[488]}
_[347]={}
_[346]={_[486],_[487]}
_[345]={}
_[344]={_[484],_[485]}
_[343]={_[483]}
_[342]={_[482]}
_[341]={_[481]}
_[340]={_[479],_[480]}
_[339]={_[478]}
_[338]={_[476],_[477]}
_[337]={_[474],_[475]}
_[336]={_[472],_[473]}
_[335]={_[471]}
_[334]={_[470]}
_[333]={_[468],_[469]}
_[332]={_[467]}
_[331]={_[465],_[466]}
_[330]={_[464]}
_[329]={}
_[328]={_[463]}
_[327]={_[462]}
_[326]={_[460],_[461]}
_[325]={_[458],_[459]}
_[324]={_[456],_[457]}
_[323]={_[455]}
_[322]={_[453],_[454]}
_[321]={_[452]}
_[320]={_[451]}
_[319]={_[450]}
_[318]={_[449]}
_[317]={_[447],_[448]}
_[316]={}
_[315]={_[446]}
_[314]={_[444],_[445]}
_[313]={}
_[312]={}
_[311]={}
_[310]={}
_[309]={}
_[308]={_[442],_[443]}
_[307]={_[440],_[441]}
_[306]={_[437],_[438],_[439]}
_[305]={}
_[304]={_[435],_[436]}
_[303]={}
_[302]={_[431],_[432],_[433],_[434]}
_[301]={_[430]}
_[300]={_[429]}
_[299]={_[428]}
_[298]={_[426],_[427]}
_[297]={_[424],_[425]}
_[296]={_[421],_[422],_[423]}
_[295]={_[419],_[420]}
_[294]={_[418]}
_[293]={_[416],_[417]}
_[292]={_[414],_[415]}
_[291]={_[413]}
_[290]={_[412]}
_[289]={}
_[288]={_[411]}
_[287]={_[410]}
_[286]={}
_[285]={}
_[284]={}
_[283]={}
_[282]={_[409]}
_[281]={}
_[280]={}
_[279]={}
_[278]={_[408]}
_[277]={_[407]}
_[276]={_[406]}
_[275]={}
_[274]={_[405]}
_[273]={_[404]}
_[272]={_[402],_[403]}
_[271]={_[400],_[401]}
_[270]={_[399]}
_[269]={_[398]}
_[268]={_[397]}
_[267]={}
_[266]={_[396]}
_[265]={_[395]}
_[264]={}
_[263]={_[394]}
_[262]={_[393]}
_[261]={_[392]}
_[260]={_[391]}
_[259]={_[390]}
_[258]={type="table",fields=_[389]}
_[257]={name="v"}
_[256]={name="t"}
_[255]={name="ld"}
_[254]={name="index"}
_[253]={name="table"}
_[252]={name="f"}
_[251]={name="e"}
_[250]={name="ld"}
_[249]={name="list"}
_[248]={name="e"}
_[247]={description="Returns the cosine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[388],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.cos"}
_[246]={description="Returns the angle x (given in radians) in degrees.",type="function",argsDisplay="x",args=_[387],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.deg"}
_[245]={description="Returns the hyperbolic tangent of x.",type="function",argsDisplay="x",args=_[386],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.tanh"}
_[244]={description="Returns the logarithm of x in the given base. The default for base is e (so that the function returns the natural logarithm of x).",type="function",argsDisplay="x [, base]",args=_[385],link="https://www.lua.org/manual/5.2/manual.html#pdf-math.log"}
_[243]={description="Returns m and e such that x = m2e, e is an integer and the absolute value of m is in the range [0.5, 1) (or zero when x is zero).",type="function",argsDisplay="x",args=_[384],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.frexp"}
_[242]={description="Returns the base-10 logarithm of x.",type="function",argsDisplay="x",args=_[383],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.log10"}
_[241]={description="Returns the minimum value among its arguments.",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[382],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.min"}
_[240]={description="Returns the smallest integer larger than or equal to x.",type="function",argsDisplay="x",args=_[381],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.ceil"}
_[239]={description="Returns two numbers, the integral part of x and the fractional part of x.",type="function",argsDisplay="x",args=_[380],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.modf"}
_[238]={description="Returns the hyperbolic sine of x.",type="function",argsDisplay="x",args=_[379],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.sinh"}
_[237]={description="Returns the arc sine of x (in radians).",type="function",argsDisplay="x",args=_[378],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.asin"}
_[236]={description="Returns the angle x (given in degrees) in radians.",type="function",argsDisplay="x",args=_[377],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.rad"}
_[235]={description="Sets x as the \"seed\" for the pseudo-random generator: equal seeds produce equal sequences of numbers.",type="function",argsDisplay="x",args=_[376],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.randomseed"}
_[234]={description="Returns the value ex.",type="function",argsDisplay="x",args=_[375],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.exp"}
_[233]={description="Returns the arc cosine of x (in radians).",type="function",argsDisplay="x",args=_[374],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.acos"}
_[232]={description="Returns the arc tangent of x (in radians).",type="function",argsDisplay="x",args=_[373],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.atan"}
_[231]={description="Returns the hyperbolic cosine of x.",type="function",argsDisplay="x",args=_[372],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.cosh"}
_[230]={link="https://www.lua.org/manual/5.1/manual.html#pdf-math.pi",type="number",description="The value of pi."}
_[229]={description="This function is an interface to the simple pseudo-random generator function rand provided by ANSI C. (No guarantees can be given for its statistical properties.)",type="function",argsDisplay="[m [, n]]",args=_[371],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.random"}
_[228]={description="Returns the square root of x. (You can also use the expression x^0.5 to compute this value.)",type="function",argsDisplay="x",args=_[370],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.sqrt"}
_[227]={description="Returns xy. (You can also use the expression x^y to compute this value.)",type="function",argsDisplay="x, y",args=_[369],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.pow"}
_[226]={description="Returns the largest integer smaller than or equal to x.",type="function",argsDisplay="x",args=_[368],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.floor"}
_[225]={description="Returns m2e (e should be an integer).",type="function",argsDisplay="m, e",args=_[367],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.ldexp"}
_[224]={description="Returns the sine of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[366],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.sin"}
_[223]={description="Returns the absolute value of x.",type="function",argsDisplay="x",args=_[365],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.abs"}
_[222]={description="Returns the tangent of x (assumed to be in radians).",type="function",argsDisplay="x",args=_[364],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.tan"}
_[221]={description="Returns the remainder of the division of x by y that rounds the quotient towards zero.",type="function",argsDisplay="x, y",args=_[363],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.fmod"}
_[220]={link="https://www.lua.org/manual/5.1/manual.html#pdf-math.huge",type="unknown",description="The value HUGE_VAL, a value larger than or equal to any other numerical value."}
_[219]={description="Returns the maximum value among its arguments.",type="function",argsDisplay="x, \194\183\194\183\194\183",args=_[362],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.max"}
_[218]={description="Returns the arc tangent of y/x (in radians), but uses the signs of both parameters to find the quadrant of the result. (It also handles correctly the case of x being zero.)",type="function",argsDisplay="y, x",args=_[361],link="https://www.lua.org/manual/5.1/manual.html#pdf-math.atan2"}
_[217]={link="https://luajit.org/ext_jit.html#jit_version",type="string",description="Contains the LuaJIT version string."}
_[216]={link="https://luajit.org/ext_jit.html#jit_version_num",type="number",description="Contains the version number of the LuaJIT core."}
_[215]={type="function",variants=_[360]}
_[214]={type="function",variants=_[359]}
_[213]={description="This sub-module holds functions to introspect the bytecode, generated traces, the IR and the generated machine code.",link="https://luajit.org/ext_jit.html#jit_util",type="table",fields=_[358]}
_[212]={description="This sub-module provides the backend for the -O command line option.",link="https://luajit.org/ext_jit.html#jit_opt",type="table",fields=_[357]}
_[211]={link="https://luajit.org/ext_jit.html#jit_os",type="string",description="Contains the target OS name."}
_[210]={type="function",variants=_[356]}
_[209]={link="https://luajit.org/ext_jit.html#jit_arch",type="string",description="Contains the target architecture name."}
_[208]={description="Returns an approximation of the amount in seconds of CPU time used by the program.",type="function",argsDisplay="",args=_[355],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.clock"}
_[207]={description="Sets the current locale of the program. locale is a string specifying a locale; category is an optional string describing which category to change: \"all\", \"collate\", \"ctype\", \"monetary\", \"numeric\", or \"time\"; the default category is \"all\". The function returns the name of the new locale, or nil if the request cannot be honored.",type="function",argsDisplay="locale [, category]",args=_[354],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.setlocale"}
_[206]={description="Returns a string with a file name that can be used for a temporary file. The file must be explicitly opened before its use and explicitly removed when no longer needed.",type="function",argsDisplay="",args=_[353],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.tmpname"}
_[205]={description="Calls the ISO C function exit to terminate the host program. If code is true, the returned status is EXIT_SUCCESS; if code is false, the returned status is EXIT_FAILURE; if code is a number, the returned status is this number. The default value for code is true.",type="function",argsDisplay="[code [, close]",args=_[352],link="https://www.lua.org/manual/5.2/manual.html#pdf-os.exit"}
_[204]={description="Returns the current time when called without arguments, or a time representing the date and time specified by the given table. This table must have fields year, month, and day, and may have fields hour, min, sec, and isdst (for a description of these fields, see the os.date function).",type="function",argsDisplay="[table]",args=_[351],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.time"}
_[203]={description="Returns the value of the process environment variable varname, or nil if the variable is not defined.",type="function",argsDisplay="varname",args=_[350],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.getenv"}
_[202]={description="Renames file or directory named oldname to newname. If this function fails, it returns nil, plus a string describing the error.",type="function",argsDisplay="oldname, newname",args=_[349],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.rename"}
_[201]={description="Deletes the file or directory with the given name. Directories must be empty to be removed. If this function fails, it returns nil, plus a string describing the error.",type="function",argsDisplay="filename",args=_[348],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.remove"}
_[200]={description="Returns a string or a table containing date and time, formatted according to the given string format.",type="function",argsDisplay="[format [, time]]",args=_[347],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.date"}
_[199]={description="Returns the number of seconds from time t1 to time t2. In POSIX, Windows, and some other systems, this value is exactly t2-t1.",type="function",argsDisplay="t2, t1",args=_[346],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.difftime"}
_[198]={description="This function is equivalent to the C function system. It passes command to be executed by an operating system shell. It returns a status code, which is system-dependent. If command is absent, then it returns nonzero if a shell is available and zero otherwise.",type="function",argsDisplay="[command]",args=_[345],link="https://www.lua.org/manual/5.1/manual.html#pdf-os.execute"}
_[197]={name="v"}
_[196]={name="object"}
_[195]={name="table"}
_[194]={type="function",variants=_[344]}
_[193]={description="Creates a cdata object for the given C type.",type="function",argsDisplay="ct [, nelem [, init, ...]]",args=_[343],link="https://luajit.org/ext_ffi_api.html#ffi_new"}
_[192]={description="Creates an interned Lua string from the data pointed to by ptr. If the optional argument len is missing, ptr is converted to a 'char *' and the data is assumed to be zero-terminated.",type="function",argsDisplay="ct [, len]",args=_[342],link="https://luajit.org/ext_ffi_api.html#ffi_string"}
_[191]={description="Creates a ctype object for the given ct.",type="function",argsDisplay="ct",args=_[341],link="https://luajit.org/ext_ffi_api.html#ffi_typeof"}
_[190]={description="Creates a ctype object for the given ct and associates it with a metatable. Only struct/union types, complex numbers and vectors are allowed.",type="function",argsDisplay="ct, metatable",args=_[340],link="https://luajit.org/ext_ffi_api.html#ffi_metatype"}
_[189]={link="https://luajit.org/ext_ffi_api.html#ffi_C",type="unknown",description="The default C library namespace. It binds to the default set of symbols or libraries on the target system."}
_[188]={description="Loads the dynamic library given by name and returns a new C library namespace which binds to its symbols. On POSIX systems, if global is true, the library symbols are loaded into the global namespace, too.",type="function",argsDisplay="name [, global]",args=_[339],link="https://luajit.org/ext_ffi_api.html#ffi_load"}
_[187]={description="Fills the data pointed to by dst with len constant bytes, given by c. If c is omitted, the data is zero-filled.",type="function",argsDisplay="dst, len, [, c]",args=_[338],link="https://luajit.org/ext_ffi_api.html#ffi_fill"}
_[186]={link="https://luajit.org/ext_ffi_api.html#ffi_os",type="string",description="Contains the target OS name. Same contents as jit.os."}
_[185]={description="Returns true if obj has the C type given by ct. Returns false otherwise.",type="function",argsDisplay="ct, obj",args=_[337],link="https://luajit.org/ext_ffi_api.html#ffi_istype"}
_[184]={description="Associates a finalizer with a pointer or aggregate cdata object. The cdata object is returned unchanged.",type="function",argsDisplay="cdata, finalizer",args=_[336],link="https://luajit.org/ext_ffi_api.html#ffi_gc"}
_[183]={description="Returns true if param (a Lua string) applies for the target ABI (Application Binary Interface). Returns false otherwise.",type="function",argsDisplay="param",args=_[335],link="https://luajit.org/ext_ffi_api.html#ffi_abi"}
_[182]={description="Returns the minimum required alignment for ct in bytes.",type="function",argsDisplay="ct",args=_[334],link="https://luajit.org/ext_ffi_api.html#ffi_alignof"}
_[181]={description="Returns the offset (in bytes) of field relative to the start of ct, which must be a struct. Additionally returns the position and the field size (in bits) for bit fields.",type="function",argsDisplay="ct, field",args=_[333],link="https://luajit.org/ext_ffi_api.html#ffi_offsetof"}
_[180]={description="Adds multiple C declarations for types or external symbols (named variables or functions).",type="function",argsDisplay="def",args=_[332],link="https://luajit.org/ext_ffi_api.html#ffi_cdef"}
_[179]={description="Creates a scalar cdata object for the given ct. The cdata object is initialized with init using the 'cast' variant of the C type conversion rules.",type="function",argsDisplay="ct, init",args=_[331],link="https://luajit.org/ext_ffi_api.html#ffi_cast"}
_[178]={description="Returns the size of ct in bytes. Returns nil if the size is not known (e.g. for 'void' or function types). Requires nelem for VLA/VLS types, except for cdata objects.",type="function",argsDisplay="ct [, nelem]",args=_[330],link="https://luajit.org/ext_ffi_api.html#ffi_sizeof"}
_[177]={description="Returns the error number set by the last C function call which indicated an error condition. If the optional newerr argument is present, the error number is set to the new value and the previous value is returned.",type="function",argsDisplay="[newerr]",args=_[329],link="https://luajit.org/ext_ffi_api.html#ffi_errno"}
_[176]={link="https://luajit.org/ext_ffi_api.html#ffi_arch",type="string",description="Contains the target architecture name. Same contents as jit.arch."}
_[175]={description="Normalizes a number to the numeric range for bit operations and returns it.",type="function",argsDisplay="x",args=_[328],link="https://bitop.luajit.org/api.html#tobit"}
_[174]={description="Returns the bitwise xor of all of its arguments.",type="function",argsDisplay="x1, [, x2, ...]",args=_[327],link="https://bitop.luajit.org/api.html#bor"}
_[173]={description="Returns either the bitwise right rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.",type="function",argsDisplay="x, n",args=_[326],link="https://bitop.luajit.org/api.html#rol"}
_[172]={description="Returns the bitwise logical left-shift of its first argument by the number of bits given by the second argument.",type="function",argsDisplay="x, n",args=_[325],link="https://bitop.luajit.org/api.html#lshift"}
_[171]={description="Returns either the bitwise left rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.",type="function",argsDisplay="x, n",args=_[324],link="https://bitop.luajit.org/api.html#rol"}
_[170]={description="Converts its first argument to a hex string.",type="function",argsDisplay="x [, n]",args=_[323],link="https://bitop.luajit.org/api.html#tohex"}
_[169]={description="Returns the bitwise arithmetic right-shift of its first argument by the number of bits given by the second argument.",type="function",argsDisplay="x, n",args=_[322],link="https://bitop.luajit.org/api.html#lshift"}
_[168]={description="Returns the bitwise or of all of its arguments.",type="function",argsDisplay="x1, [, x2, ...]",args=_[321],link="https://bitop.luajit.org/api.html#bor"}
_[167]={description="Swaps the bytes of its argument and returns it.",type="function",argsDisplay="x",args=_[320],link="https://bitop.luajit.org/api.html#bswap"}
_[166]={description="Returns the bitwise and of all of its arguments.",type="function",argsDisplay="x1, [, x2, ...]",args=_[319],link="https://bitop.luajit.org/api.html#bor"}
_[165]={description="Returns the bitwise not of its argument.",type="function",argsDisplay="x",args=_[318],link="https://bitop.luajit.org/api.html#bnot"}
_[164]={description="Returns the bitwise logical right-shift of its first argument by the number of bits given by the second argument.",type="function",argsDisplay="x, n",args=_[317],link="https://bitop.luajit.org/api.html#lshift"}
_[163]={name="t"}
_[162]={description="Sets the given function as a hook. The string mask and the number count describe when the hook will be called. The string mask may have the following characters, with the given meaning:",type="function",argsDisplay="[thread,] hook, mask [, count]",args=_[316],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.sethook"}
_[161]={description="Returns the environment of object o.",type="function",argsDisplay="o",args=_[315],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getfenv"}
_[160]={description="This function returns the name and the value of the upvalue with index up of the function f. The function returns nil if there is no upvalue with the given index.",type="function",argsDisplay="f, up",args=_[314],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getupvalue"}
_[159]={description="This function returns the name and the value of the local variable with index local of the function at level f of the stack. This function accesses not only explicit local variables, but also parameters, temporaries, etc.",type="function",argsDisplay="[thread,] f, local",args=_[313],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getlocal"}
_[158]={description="Returns the current hook settings of the thread, as three values: the current hook function, the current hook mask, and the current hook count (as set by the debug.sethook function).",type="function",argsDisplay="[thread]",args=_[312],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.gethook"}
_[157]={description="Returns a table with information about a function. You can give the function directly or you can give a number as the value of f, which means the function running at level f of the call stack of the given thread: level 0 is the current function (getinfo itself); level 1 is the function that called getinfo (except for tail calls, which do not count on the stack); and so on. If f is a number larger than the number of active functions, then getinfo returns nil.",type="function",argsDisplay="[thread,] f [, what]",args=_[311],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.getinfo"}
_[156]={description="Returns the registry table (see \194\1673.5).",type="function",argsDisplay="",args=_[310],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getregistry"}
_[155]={description="This function assigns the value value to the local variable with index local of the function at level level of the stack. The function returns nil if there is no local variable with the given index, and raises an error when called with a level out of range. (You can call getinfo to check whether the level is valid.) Otherwise, it returns the name of the local variable.",type="function",argsDisplay="[thread,] level, local, value",args=_[309],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.setlocal"}
_[154]={description="Returns an unique identifier (as a light userdata) for the upvalue numbered n from the given function.",type="function",argsDisplay="f, n",args=_[308],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.upvalueid"}
_[153]={description="Sets the environment of the given object to the given table. Returns object.",type="function",argsDisplay="object, table",args=_[307],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.setfenv"}
_[152]={description="This function assigns the value value to the upvalue with index up of the function func. The function returns nil if there is no upvalue with the given index. Otherwise, it returns the name of the upvalue.",type="function",argsDisplay="func, up, value",args=_[306],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.setupvalue"}
_[151]={description="Returns a string with a traceback of the call stack. An optional message string is appended at the beginning of the traceback. An optional level number tells at which level to start the traceback (default is 1, the function calling traceback).",type="function",argsDisplay="[thread,] [message [, level]]",args=_[305],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.traceback"}
_[150]={description="Sets the metatable for the given object to the given table (which can be nil).",type="function",argsDisplay="object, table",args=_[304],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.setmetatable"}
_[149]={description="Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.",type="function",argsDisplay="",args=_[303],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.debug"}
_[148]={description="Make the n1-th upvalue of the Lua closure f1 refer to the n2-th upvalue of the Lua closure f2.",type="function",argsDisplay="f1, n1, f2, n2",args=_[302],link="https://www.lua.org/manual/5.2/manual.html#pdf-debug.upvaluejoin"}
_[147]={description="Returns the metatable of the given object or nil if it does not have a metatable.",type="function",argsDisplay="object",args=_[301],link="https://www.lua.org/manual/5.1/manual.html#pdf-debug.getmetatable"}
_[146]={name="message"}
_[145]={description="Returns a string containing a binary representation of the given function, so that a later loadstring on this string returns a copy of the function. function must be a Lua function without upvalues.",type="function",argsDisplay="function [, strip]",args=_[300],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.dump"}
_[144]={description="Receives a string and returns its length. The empty string \"\" has length 0. Embedded zeros are counted, so \"a\\000bc\\000\" has length 5.",type="function",argsDisplay="s",args=_[299],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.len"}
_[143]={description="Returns the substring of s that starts at i and continues until j; i and j can be negative. If j is absent, then it is assumed to be equal to -1 (which is the same as the string length). In particular, the call string.sub(s,1,j) returns a prefix of s with length j, and string.sub(s, -i) returns a suffix of s with length i.",type="function",argsDisplay="s, i [, j]",args=_[298],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.sub"}
_[142]={description="Returns a string that is the concatenation of n copies of the string s separated by the string sep. The default value for sep is the empty string (that is, no separator).",type="function",argsDisplay="s, n [, sep]",args=_[297],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.rep"}
_[141]={description="Returns a copy of s in which all (or the first n, if given) occurrences of the pattern have been replaced by a replacement string specified by repl, which can be a string, a table, or a function. gsub also returns, as its second value, the total number of matches that occurred.",type="function",argsDisplay="s, pattern, repl [, n]",args=_[296],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.gsub"}
_[140]={description="Looks for the first match of pattern in the string s. If it finds one, then match returns the captures from the pattern; otherwise it returns nil. If pattern specifies no captures, then the whole match is returned. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative.",type="function",argsDisplay="s, pattern [, init]",args=_[295],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.match"}
_[139]={description="Receives a string and returns a copy of this string with all uppercase letters changed to lowercase. All other characters are left unchanged. The definition of what an uppercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[294],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.lower"}
_[138]={description="Returns an iterator function that, each time it is called, returns the next captures from pattern over string s. If pattern specifies no captures, then the whole match is produced in each call.",type="function",argsDisplay="s, pattern",args=_[293],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.gmatch"}
_[137]={description="Looks for the first match of pattern in the string s. If it finds a match, then find returns the indices of s where this occurrence starts and ends; otherwise, it returns nil. A third, optional numerical argument init specifies where to start the search; its default value is 1 and can be negative. A value of true as a fourth, optional argument plain turns off the pattern matching facilities, so the function does a plain \"find substring\" operation, with no characters in pattern being considered \"magic\". Note that if plain is given, then init must be given as well.",type="function",argsDisplay="s, pattern [, init [, plain]]",args=_[292],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.find"}
_[136]={description="Returns a string that is the string s reversed.",type="function",argsDisplay="s",args=_[291],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.reverse"}
_[135]={description="Returns the internal numerical codes of the characters s[i], s[i+1], \194\183\194\183\194\183, s[j]. The default value for i is 1; the default value for j is i.",type="function",argsDisplay="s [, i [, j]]",args=_[290],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.byte"}
_[134]={description="Receives zero or more integers. Returns a string with length equal to the number of arguments, in which each character has the internal numerical code equal to its corresponding argument.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[289],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.char"}
_[133]={description="Returns a formatted version of its variable number of arguments following the description given in its first argument (which must be a string). The format string follows the same rules as the ISO C function sprintf. The only differences are that the options/modifiers *, h, L, l, n, and p are not supported and that there is an extra option, q. The q option formats a string between double quotes, using escape sequences when necessary to ensure that it can safely be read back by the Lua interpreter. For instance, the call",type="function",argsDisplay="formatstring, \194\183\194\183\194\183",args=_[288],link="https://www.lua.org/manual/5.2/manual.html#pdf-string.format"}
_[132]={description="Receives a string and returns a copy of this string with all lowercase letters changed to uppercase. All other characters are left unchanged. The definition of what a lowercase letter is depends on the current locale.",type="function",argsDisplay="s",args=_[287],link="https://www.lua.org/manual/5.1/manual.html#pdf-string.upper"}
_[131]={name="name"}
_[130]={description="Similar to io.input, but operates over the default output file.",type="function",argsDisplay="[file]",args=_[286],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.output"}
_[129]={type="ref",name="file"}
_[128]={description="Opens the given file name in read mode and returns an iterator function that works like file:lines(\194\183\194\183\194\183) over the opened file. When the iterator function detects the end of file, it returns nil (to finish the loop) and automatically closes the file.",type="function",argsDisplay="[filename \194\183\194\183\194\183]",args=_[285],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.lines"}
_[127]={type="ref",name="file"}
_[126]={description="Equivalent to file:flush over the default output file.",type="function",argsDisplay="",args=_[284],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.flush"}
_[125]={description="Equivalent to io.input():read(\194\183\194\183\194\183).",type="function",argsDisplay="\194\183\194\183\194\183",args=_[283],link="https://www.lua.org/manual/5.2/manual.html#pdf-io.read"}
_[124]={description="Checks whether obj is a valid file handle. Returns the string \"file\" if obj is an open file handle, \"closed file\" if obj is a closed file handle, or nil if obj is not a file handle.",type="function",argsDisplay="obj",args=_[282],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.type"}
_[123]={type="ref",name="file"}
_[122]={description="Equivalent to file:close(). Without a file, closes the default output file.",type="function",argsDisplay="[file]",args=_[281],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.close"}
_[121]={description="Equivalent to io.output():write.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[280],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.write"}
_[120]={description="Returns a handle for a temporary file. This file is opened in update mode and it is automatically removed when the program ends.",type="function",argsDisplay="",returnTypes=_[278],args=_[279],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.tmpfile"}
_[119]={description="Starts program prog in a separated process and returns a file handle that you can use to read data from this program (if mode is \"r\", the default) or to write data to this program (if mode is \"w\").",type="function",argsDisplay="prog [, mode]",returnTypes=_[276],args=_[277],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.popen"}
_[118]={description="When called with a file name, it opens the named file (in text mode), and sets its handle as the default input file. When called with a file handle, it simply sets this file handle as the default input file. When called without parameters, it returns the current default input file.",type="function",argsDisplay="[file]",args=_[275],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.input"}
_[117]={description="This function opens a file, in the mode specified in the string mode. It returns a new file handle, or, in case of errors, nil plus an error message.",type="function",argsDisplay="filename [, mode]",returnTypes=_[273],args=_[274],link="https://www.lua.org/manual/5.1/manual.html#pdf-io.open"}
_[116]={description="Dynamically links the host program with the C library libname.",type="function",argsDisplay="libname, funcname",args=_[272],link="https://www.lua.org/manual/5.2/manual.html#pdf-package.loadlib"}
_[115]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.path",type="unknown",description="The path used by require to search for a Lua loader."}
_[114]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.preload",type="unknown",description="A table to store loaders for specific modules (see require)."}
_[113]={description="Searches for the given name in the given path.",type="function",argsDisplay="name, path [, sep [, rep]]",args=_[271],link="https://www.lua.org/manual/5.2/manual.html#pdf-package.searchpath"}
_[112]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.loaded",type="unknown",description="A table used by require to control which modules are already loaded. When you require a module modname and package.loaded[modname] is not false, require simply returns the value stored there."}
_[111]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.loaders",type="unknown",description="A table used by require to control how to load modules."}
_[110]={description="Sets a metatable for module with its __index field referring to the global environment, so that this module inherits values from the global environment. To be used as an option to function module.",type="function",argsDisplay="module",args=_[270],link="https://www.lua.org/manual/5.1/manual.html#pdf-package.seeall"}
_[109]={link="https://www.lua.org/manual/5.1/manual.html#pdf-package.cpath",type="unknown",description="The path used by require to search for a C loader."}
_[108]={name="index"}
_[107]={name="table"}
_[106]={name="modname"}
_[105]={name="v2"}
_[104]={name="v1"}
_[103]={name="f"}
_[102]={name="err"}
_[101]={name="f"}
_[100]={description="Starts or continues the execution of coroutine co. The first time you resume a coroutine, it starts running its body. The values val1, \194\183\194\183\194\183 are passed as the arguments to the body function. If the coroutine has yielded, resume restarts it; the values val1, \194\183\194\183\194\183 are passed as the results from the yield.",type="function",argsDisplay="co [, val1, \194\183\194\183\194\183]",args=_[269],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.resume"}
_[99]={description="Creates a new coroutine, with body f. f must be a Lua function. Returns a function that resumes the coroutine each time it is called. Any arguments passed to the function behave as the extra arguments to resume. Returns the same values returned by resume, except the first boolean. In case of error, propagates the error.",type="function",argsDisplay="f",args=_[268],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.wrap"}
_[98]={description="Suspends the execution of the calling coroutine. The coroutine cannot be running a C function, a metamethod, or an iterator. Any arguments to yield are passed as extra results to resume.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[267],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.yield"}
_[97]={description="Returns the status of coroutine co, as a string: \"running\", if the coroutine is running (that is, it called status); \"suspended\", if the coroutine is suspended in a call to yield, or if it has not started running yet; \"normal\" if the coroutine is active but not running (that is, it has resumed another coroutine); and \"dead\" if the coroutine has finished its body function, or if it has stopped with an error.",type="function",argsDisplay="co",args=_[266],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.status"}
_[96]={description="Creates a new coroutine, with body f. f must be a Lua function. Returns this new coroutine, an object with type \"thread\".",type="function",argsDisplay="f",args=_[265],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.create"}
_[95]={description="Returns the running coroutine, or nil when called by the main thread.",type="function",argsDisplay="",args=_[264],link="https://www.lua.org/manual/5.1/manual.html#pdf-coroutine.running"}
_[94]={name="metatable"}
_[93]={name="table"}
_[92]={name="value"}
_[91]={name="index"}
_[90]={name="table"}
_[89]={description="Removes from table the element at position pos, shifting down other elements to close the space, if necessary. Returns the value of the removed element. The default value for pos is n, where n is the length of the table, so that a call table.remove(t) removes the last element of table t.",type="function",argsDisplay="table [, pos]",args=_[263],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.remove"}
_[88]={description="Inserts element value at position pos in table, shifting up other elements to open space, if necessary. The default value for pos is n+1, where n is the length of the table (see \194\1672.5.5), so that a call table.insert(t,x) inserts x at the end of table t.",type="function",argsDisplay="table, [pos,] value",args=_[262],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.insert"}
_[87]={description="Sorts table elements in a given order, in-place, from table[1] to table[n], where n is the length of the table. If comp is given, then it must be a function that receives two table elements, and returns true when the first is less than the second (so that not comp(a[i+1],a[i]) will be true after the sort). If comp is not given, then the standard Lua operator < is used instead.",type="function",argsDisplay="table [, comp]",args=_[261],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.sort"}
_[86]={description="Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices. (To do its job this function does a linear traversal of the whole table.)",type="function",argsDisplay="table",args=_[260],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.maxn"}
_[85]={description="Given an array where all elements are strings or numbers, returns table[i]..sep..table[i+1] \194\183\194\183\194\183 sep..table[j]. The default value for sep is the empty string, the default for i is 1, and the default for j is the length of the table. If i is greater than j, returns the empty string.",type="function",argsDisplay="table [, sep [, i [, j]]]",args=_[259],link="https://www.lua.org/manual/5.1/manual.html#pdf-table.concat"}
_[84]={__index=_[258]}
_[83]={_[257]}
_[82]={_[256]}
_[81]={_[255]}
_[80]={_[254]}
_[79]={_[252],_[253]}
_[78]={}
_[77]={_[251]}
_[76]={_[250]}
_[75]={_[249]}
_[74]={_[248]}
_[73]={atan2=_[218],max=_[219],huge=_[220],fmod=_[221],tan=_[222],abs=_[223],sin=_[224],ldexp=_[225],floor=_[226],pow=_[227],sqrt=_[228],random=_[229],pi=_[230],cosh=_[231],atan=_[232],acos=_[233],exp=_[234],randomseed=_[235],rad=_[236],asin=_[237],sinh=_[238],modf=_[239],ceil=_[240],min=_[241],log10=_[242],frexp=_[243],log=_[244],tanh=_[245],deg=_[246],cos=_[247]}
_[72]={arch=_[209],flush=_[210],os=_[211],opt=_[212],util=_[213],on=_[214],off=_[215],version_num=_[216],status=_[217]}
_[71]={execute=_[198],difftime=_[199],date=_[200],remove=_[201],rename=_[202],getenv=_[203],time=_[204],exit=_[205],tmpname=_[206],setlocale=_[207],clock=_[208]}
_[70]={_[197]}
_[69]={_[196]}
_[68]={_[195]}
_[67]={arch=_[176],errno=_[177],sizeof=_[178],cast=_[179],cdef=_[180],offsetof=_[181],alignof=_[182],abi=_[183],gc=_[184],istype=_[185],os=_[186],fill=_[187],load=_[188],C=_[189],metatype=_[190],typeof=_[191],string=_[192],new=_[193],copy=_[194]}
_[66]={rshift=_[164],bnot=_[165],band=_[166],bswap=_[167],bor=_[168],arshift=_[169],tohex=_[170],rol=_[171],lshift=_[172],ror=_[173],bxor=_[174],tobit=_[175]}
_[65]={_[163]}
_[64]={}
_[63]={getmetatable=_[147],upvaluejoin=_[148],debug=_[149],setmetatable=_[150],traceback=_[151],setupvalue=_[152],setfenv=_[153],upvalueid=_[154],setlocal=_[155],getregistry=_[156],getinfo=_[157],gethook=_[158],getlocal=_[159],getupvalue=_[160],getfenv=_[161],sethook=_[162]}
_[62]={_[146]}
_[61]={upper=_[132],format=_[133],char=_[134],byte=_[135],reverse=_[136],find=_[137],gmatch=_[138],lower=_[139],match=_[140],gsub=_[141],rep=_[142],sub=_[143],len=_[144],dump=_[145]}
_[60]={_[131]}
_[59]={open=_[117],input=_[118],popen=_[119],tmpfile=_[120],write=_[121],close=_[122],stderr=_[123],type=_[124],read=_[125],flush=_[126],stdin=_[127],lines=_[128],stdout=_[129],output=_[130]}
_[58]={cpath=_[109],seeall=_[110],loaders=_[111],loaded=_[112],searchpath=_[113],preload=_[114],path=_[115],loadlib=_[116]}
_[57]={_[107],_[108]}
_[56]={_[106]}
_[55]={_[104],_[105]}
_[54]={_[103]}
_[53]={}
_[52]={_[101],_[102]}
_[51]={running=_[95],create=_[96],status=_[97],yield=_[98],wrap=_[99],resume=_[100]}
_[50]={}
_[49]={_[93],_[94]}
_[48]={_[90],_[91],_[92]}
_[47]={concat=_[85],maxn=_[86],sort=_[87],insert=_[88],remove=_[89]}
_[46]={}
_[45]={}
_[44]={type="table",fields=_[84]}
_[43]={description="Issues an error when the value of its argument v is false (i.e., nil or false); otherwise, returns all its arguments. message is an error message; when absent, it defaults to \"assertion failed!\"",type="function",argsDisplay="v [, message]",args=_[83],link="https://www.lua.org/manual/5.1/manual.html#pdf-assert"}
_[42]={description="Returns three values: an iterator function, the table t, and 0, so that the construction",type="function",argsDisplay="t",args=_[82],link="https://www.lua.org/manual/5.1/manual.html#pdf-ipairs"}
_[41]={description="An alias for string.",type="function",argsDisplay="ld [, source [, mode [, env]]]",args=_[81],link="https://www.lua.org/manual/5.2/manual.html#pdf-load"}
_[40]={description="If index is a number, returns all arguments after argument number index. Otherwise, index must be the string \"#\", and select returns the total number of extra arguments it received.",type="function",argsDisplay="index, \194\183\194\183\194\183",args=_[80],link="https://www.lua.org/manual/5.1/manual.html#pdf-select"}
_[39]={description="Sets the environment to be used by the given function. f can be a Lua function or a number that specifies the function at that stack level: Level 1 is the function calling setfenv. setfenv returns the given function.",type="function",argsDisplay="f, table",args=_[79],link="https://www.lua.org/manual/5.1/manual.html#pdf-setfenv"}
_[38]={description="Similar to load, but gets the chunk from file filename or from the standard input, if no file name is given.",type="function",argsDisplay="[filename [, mode [, env]]]",args=_[78],link="https://www.lua.org/manual/5.2/manual.html#pdf-loadfile"}
_[37]={description="Receives an argument of any type and converts it to a string in a reasonable format. For complete control of how numbers are converted, use string.format.",type="function",argsDisplay="e",args=_[77],link="https://www.lua.org/manual/5.1/manual.html#pdf-tostring"}
_[36]={description="Loads a chunk.",type="function",argsDisplay="ld [, source [, mode [, env]]]",args=_[76],link="https://www.lua.org/manual/5.2/manual.html#pdf-load"}
_[35]={description="Returns the elements from the given table. This function is equivalent to  return list[i], list[i+1], \194\183\194\183\194\183, list[j]",type="function",argsDisplay="list [, i [, j]]",args=_[75],link="https://www.lua.org/manual/5.1/manual.html#pdf-unpack"}
_[34]={description="Tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then tonumber returns this number; otherwise, it returns nil.",type="function",argsDisplay="e [, base]",args=_[74],link="https://www.lua.org/manual/5.1/manual.html#pdf-tonumber"}
_[33]={description="This library is an interface to the standard C math library. It provides all its functions inside the table math.",link="https://www.lua.org/manual/5.1/manual.html#5.6",type="table",fields=_[73]}
_[32]={description="The functions in this built-in module control the behavior of the JIT compiler engine.",link="https://luajit.org/ext_jit.html",type="table",fields=_[72]}
_[31]={description="This library is implemented through table os.",link="https://www.lua.org/manual/5.1/manual.html#5.8",type="table",fields=_[71]}
_[30]={description="Returns the type of its only argument, coded as a string. The possible results of this function are \"nil\" (a string, not the value nil), \"number\", \"string\", \"boolean\", \"table\", \"function\", \"thread\", and \"userdata\".",type="function",argsDisplay="v",args=_[70],link="https://www.lua.org/manual/5.1/manual.html#pdf-type"}
_[29]={description="If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a \"__metatable\" field, returns the associated value. Otherwise, returns the metatable of the given object.",type="function",argsDisplay="object",args=_[69],link="https://www.lua.org/manual/5.1/manual.html#pdf-getmetatable"}
_[28]={description="Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. next returns the next index of the table and its associated value. When called with nil as its second argument, next returns an initial index and its associated value. When called with the last index, or with nil in an empty table, next returns nil. If the second argument is absent, then it is interpreted as nil. In particular, you can use next(t) to check whether a table is empty.",type="function",argsDisplay="table [, index]",args=_[68],link="https://www.lua.org/manual/5.1/manual.html#pdf-next"}
_[27]={description="The FFI library allows calling external C functions and using C data structures from pure Lua code.",link="https://luajit.org/ext_ffi_api.html",type="table",fields=_[67]}
_[26]={description="This library provides bitwise operations. It provides all its functions inside the table bit.",link="https://bitop.luajit.org/",type="table",fields=_[66]}
_[25]={description="Returns three values: the next function, the table t, and nil, so that the construction",type="function",argsDisplay="t",args=_[65],link="https://www.lua.org/manual/5.1/manual.html#pdf-pairs"}
_[24]={description="Returns the current environment in use by the function. f can be a Lua function or a number that specifies the function at that stack level: Level 1 is the function calling getfenv. If the given function is not a Lua function, or if f is 0, getfenv returns the global environment. The default for f is 1.",type="function",argsDisplay="[f]",args=_[64],link="https://www.lua.org/manual/5.1/manual.html#pdf-getfenv"}
_[23]={description="This library provides the functionality of the debug interface to Lua programs. You should exert care when using this library. The functions provided here should be used exclusively for debugging and similar tasks, such as profiling. Please resist the temptation to use them as a usual programming tool: they can be very slow. Moreover, several of these functions violate some assumptions about Lua code (e.g., that variables local to a function cannot be accessed from outside or that userdata metatables cannot be changed by Lua code) and therefore can compromise otherwise secure code.",link="https://www.lua.org/manual/5.1/manual.html#5.9",type="table",fields=_[63]}
_[22]={description="Terminates the last protected function called and returns message as the error message. Function error never returns.",type="function",argsDisplay="message [, level]",args=_[62],link="https://www.lua.org/manual/5.1/manual.html#pdf-error"}
_[21]={description="This library provides generic functions for string manipulation, such as finding and extracting substrings, and pattern matching. When indexing a string in Lua, the first character is at position 1 (not at 0, as in C). Indices are allowed to be negative and are interpreted as indexing backwards, from the end of the string. Thus, the last character is at position -1, and so on.",link="https://www.lua.org/manual/5.1/manual.html#5.4",type="table",fields=_[61]}
_[20]={description="Creates a module. If there is a table in package.loaded[name], this table is the module. Otherwise, if there is a global table t with the given name, this table is the module. Otherwise creates a new table t and sets it as the value of the global name and the value of package.loaded[name]. This function also initializes t._NAME with the given name, t._M with the module (t itself), and t._PACKAGE with the package name (the full module name minus last component; see below). Finally, module sets t as the new environment of the current function and the new value of package.loaded[name], so that require returns t.",type="function",argsDisplay="name [, \194\183\194\183\194\183]",args=_[60],link="https://www.lua.org/manual/5.1/manual.html#pdf-module"}
_[19]={description="The I/O library provides two different styles for file manipulation. The first one uses implicit file descriptors; that is, there are operations to set a default input file and a default output file, and all input/output operations are over these default files. The second style uses explicit file descriptors.",link="https://www.lua.org/manual/5.1/manual.html#5.7",type="table",fields=_[59]}
_[18]={description="The package library provides basic facilities for loading and building modules in Lua. It exports two of its functions directly in the global environment: require and module. Everything else is exported in a table package.",link="https://www.lua.org/manual/5.1/manual.html#5.3",type="table",fields=_[58]}
_[17]={description="Gets the real value of table[index], without invoking any metamethod. table must be a table; index may be any value.",type="function",argsDisplay="table, index",args=_[57],link="https://www.lua.org/manual/5.1/manual.html#pdf-rawget"}
_[16]={description="Loads the given module. The function starts by looking into the package.loaded table to determine whether modname is already loaded. If it is, then require returns the value stored at package.loaded[modname]. Otherwise, it tries to find a loader for the module.",type="function",argsDisplay="modname",args=_[56],link="https://www.lua.org/manual/5.1/manual.html#pdf-require"}
_[15]={description="Checks whether v1 is equal to v2, without invoking any metamethod. Returns a boolean.",type="function",argsDisplay="v1, v2",args=_[55],link="https://www.lua.org/manual/5.1/manual.html#pdf-rawequal"}
_[14]={description="Calls function f with the given arguments in protected mode. This means that any error inside f is not propagated; instead, pcall catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, pcall also returns all results from the call, after this first result. In case of any error, pcall returns false plus the error message.",type="function",argsDisplay="f [, arg1, \194\183\194\183\194\183]",args=_[54],link="https://www.lua.org/manual/5.1/manual.html#pdf-pcall"}
_[13]={description="Receives any number of arguments, and prints their values to stdout, using the tostring function to convert them to strings. print is not intended for formatted output, but only as a quick way to show a value, typically for debugging. For formatted output, use string.format.",type="function",argsDisplay="\194\183\194\183\194\183",args=_[53],link="https://www.lua.org/manual/5.1/manual.html#pdf-print"}
_[12]={description="This function is similar to pcall, except that you can set a new error handler.",type="function",argsDisplay="f, err [, arg1, \194\183\194\183\194\183]",args=_[52],link="https://www.lua.org/manual/5.1/manual.html#pdf-xpcall"}
_[11]={description="The operations related to coroutines comprise a sub-library of the basic library and come inside the table coroutine. See \194\1672.11 for a general description of coroutines.",link="https://www.lua.org/manual/5.1/manual.html#5.2",type="table",fields=_[51]}
_[10]={description="This function is a generic interface to the garbage collector. It performs different functions according to its first argument, opt:",type="function",argsDisplay="[opt [, arg]]",args=_[50],link="https://www.lua.org/manual/5.1/manual.html#pdf-collectgarbage"}
_[9]={description="Sets the metatable for the given table. (You cannot change the metatable of other types from Lua, only from C.) If metatable is nil, removes the metatable of the given table. If the original metatable has a \"__metatable\" field, raises an error.",type="function",argsDisplay="table, metatable",args=_[49],link="https://www.lua.org/manual/5.1/manual.html#pdf-setmetatable"}
_[8]={link="https://www.lua.org/manual/5.1/manual.html#pdf-_VERSION",type="string",description="A global variable (not a function) that holds a string containing the current interpreter version. The current contents of this variable is \"Lua 5.1\"."}
_[7]={description="Sets the real value of table[index] to value, without invoking any metamethod. table must be a table, index any value different from nil, and value any Lua value.",type="function",argsDisplay="table, index, value",args=_[48],link="https://www.lua.org/manual/5.1/manual.html#pdf-rawset"}
_[6]={description="This library provides generic functions for table manipulation. It provides all its functions inside the table table.",link="https://www.lua.org/manual/5.1/manual.html#5.5",type="table",fields=_[47]}
_[5]={description="Opens the named file and executes its contents as a Lua chunk. When called without arguments, dofile executes the contents of the standard input (stdin). Returns all values returned by the chunk. In case of errors, dofile propagates the error to its caller (that is, dofile does not run in protected mode).",type="function",argsDisplay="[filename]",args=_[46],link="https://www.lua.org/manual/5.1/manual.html#pdf-dofile"}
_[4]={metatable=_[44],type="table",fields=_[45]}
_[3]={dofile=_[5],table=_[6],rawset=_[7],_VERSION=_[8],setmetatable=_[9],collectgarbage=_[10],coroutine=_[11],xpcall=_[12],print=_[13],pcall=_[14],rawequal=_[15],require=_[16],rawget=_[17],package=_[18],io=_[19],module=_[20],string=_[21],error=_[22],debug=_[23],getfenv=_[24],pairs=_[25],bit=_[26],ffi=_[27],next=_[28],getmetatable=_[29],type=_[30],os=_[31],jit=_[32],math=_[33],tonumber=_[34],unpack=_[35],load=_[36],tostring=_[37],loadfile=_[38],setfenv=_[39],select=_[40],loadstring=_[41],ipairs=_[42],assert=_[43]}
_[2]={file=_[4]}
_[1]={type="table",fields=_[3]}
return {global=_[1],namedTypes=_[2]}