local t = {}
setmetatable(t, {
  __add = function(self, other)
    return self[1] + other
  end
})
print(t["foo"])   -- Error: "foo" is not a valid index in a table with no metatable
t["foo"] = "bar"
print(t["foo"])   -- "bar"
local a = "123" + 1
print(a)          -- "124"
for i = 1, 10 do
  t[i] = i * 2
end
print(t[5])       -- "10"
return t, a, nil