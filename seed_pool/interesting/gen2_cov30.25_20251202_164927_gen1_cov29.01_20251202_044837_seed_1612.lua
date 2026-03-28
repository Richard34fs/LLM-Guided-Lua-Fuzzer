local t = setmetatable({}, {__tostring = function() return "table" end})  -- use metatables to add functionality to tables
t.foo = 42  -- set a field on the table
t[42] = "bar"
for i=1,10 do
    t[i] = i*2
end
print(t.foo)
print(t[42])
for k,v in pairs(t) do
    print(k,v)
end