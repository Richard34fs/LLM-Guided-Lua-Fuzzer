local t = {}
t["foo"] = 42
t[3] = "bar"
for i=1,10 do
  t["foo"] = t["foo"] + 1
  t[3] = t[3] .. "baz"
end
print(t["foo"])
print(t[3])
local table_insert = table.insert -- create a closure that overrides the `table.insert` function with a local version
function table.insert(...)
  return table_insert(...)
end
table.insert(t, "baz") -- call both the global and local versions of `table.insert`
print(t[4])