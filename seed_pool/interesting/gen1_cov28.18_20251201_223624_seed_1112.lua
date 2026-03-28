local mt = {}
mt.__index = function(t, k) return t[k] end
mt.__newindex = function(t, k, v) rawset(t, k, v) end
mt.__add = function(a, b, ...) return a .. b, ... end
mt.__call = function(f, ...) print(...) end
local t = setmetatable({}, mt)
t.self = t
t[1] = t
t.foo = "bar"
print(t.self.foo)
t("hello", "world")