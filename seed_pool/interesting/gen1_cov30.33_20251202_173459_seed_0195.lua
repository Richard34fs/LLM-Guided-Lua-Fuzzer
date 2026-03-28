local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "key"
    t[key] = i
end

-- Add metatable to table 't'
setmetatable(t, {__index = function(table, key) return "value" end})

-- Add a function as a value in table 't'
t.func = function() print("Hello, World!") end

-- Add an extra field to table 't'
t.extra_field = 42

-- Deep nesting of tables
local t1 = {a = 1, b = 2}
local t2 = {c = 3, d = 4}
local t3 = {e = 5, f = 6}
t1.nested_table = t2
t2.nested_table = t3