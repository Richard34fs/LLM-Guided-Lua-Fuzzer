local t = {}
for i = 1, 1000 do
    local key = math.random(1, 100)
    t[key] = i
end
for i = 1, 1000 do
    local key = tostring(math.random(1, 100))
    t[key] = i
end
t.metatable = {}
setmetatable(t, {__index = function(table, key) return table.metatable[key] end})
t.func_field = function() print("Hello, World!") end
t["extra_field"] = 42
t.nested_table = {a = 1, b = 2, c = 3}
local t = {}
for i = 1, 1000 do
    local key = math.random(1, 100)
    t[key] = i
end
for i = 1, 1000 do
    local key = tostring(math.random(1, 100))
    t[key] = i
end
t.metatable = {}
setmetatable(t, {__index = function(table, key) return table.metatable[key] end})
t.func_field = function() print("Hello, World!") end
t["extra_field"] = 42
t.nested_table = {a = 1, b = 2, c = 3}