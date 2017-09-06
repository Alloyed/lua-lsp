local a
------^
	local b
-------^
b = "😬" local c = nil
-----------------^

a() b() c()
