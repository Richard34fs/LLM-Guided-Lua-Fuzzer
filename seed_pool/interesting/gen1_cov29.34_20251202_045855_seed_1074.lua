local table_insert = table.insert
local ipairs = ipairs
local print = print

t = {}
s = "0"
i = 0
while i < 10 do
  t[s] = i
  s = tostring(tonumber(s) + 1)
  i = i + 1
end
for k, v in pairs(t) do
  print(k, v)
end