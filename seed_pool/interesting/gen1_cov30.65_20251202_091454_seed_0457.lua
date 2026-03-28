local t = {}
t["a"] = "b"
print(type(t["a"]))
t["a"] = 123
print(type(t["a"]))
for i = 1, 5 do
t[i] = {}
print(type(t[i]))
end
local metatable = {
__index = function(table, key)
return "default"
end,
__newindex = function(table, key, value)
rawset(table, key, value) -- default behavior
end,
__add = function(a, b)
return a.value + b.value
end,
__concat = function(a, b)
return tostring(a) .. tostring(b)
end,
__len = function(table)
local count = 0
for _ in pairs(table) do
count = count + 1
end
return count
end,
__call = function(table, ...)
local args = {...}
return table.func(unpack(args))
end,
}
setmetatable(t, metatable)