local t = {}
t["foo"] = "bar"
print(t["foo"])
local foo = "10"
local bar = 20
print(foo + bar)
for i = 1, 5 do
  if type(i) == "number" then
    i = tostring(i)
  else
    i = tonumber(i)
  end
  print(type(i))
end

local table_insert = table.insert   -- local version of table.insert
table_insert(t, 1, "new item")     -- global invocation
table_insert(t, "new item")        -- local invocation
print(t[1])
print(t[2])

local ipairs = ipairs    -- local version of ipairs
for i, v in ipairs(t) do
  print(i, v)
end
for i, v in pairs(t) do
  print(i, v)
end

local print = print     -- local version of print
print("hello world")   -- global invocation
print "hello world"    -- local invocation