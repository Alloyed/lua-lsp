local a = require 'a'

a.b = "fresh"

a.b.c.d = "nice one !"

a[a.b] = "whammie"

function fresh()
	return "ok man"
end

