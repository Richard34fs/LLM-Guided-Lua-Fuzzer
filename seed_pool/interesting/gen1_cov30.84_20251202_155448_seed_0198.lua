local t = {}
local mt = {
    __index = function(t, k) return k end,
    __newindex = function(t, k, v) rawset(t, k, v + 1) end,
    __add = function(a, b) return tostring(a) .. tostring(b) end,
    __call = function(f, ...) print(...) end
}
setmetatable(t, mt)
t.foo = 42
pcall(function()
    print(t.bar)
end)
t.baz = 1337
print(t.baz)
local sum = t + 21
pcall(function()
    print(sum)
end)
pcall(function()
    t("hello world")
end)