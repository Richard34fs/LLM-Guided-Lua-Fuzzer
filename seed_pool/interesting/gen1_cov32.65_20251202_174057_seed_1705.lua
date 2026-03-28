t = {a=1}
for i=1,10 do
    t[i] = i
    t["a"..i] = i*2
end
t.b = "c"
local function local_table_insert(table, index, value)
  table[index] = value
end
local function local_ipairs(table)
  return ipairs(table)
end
local function local_print(...)
  print(...)
end
local function local_pairs(table)
  return pairs(table)
end
print(t["b"])
local_print(t[1])
local_print(t["a10"])
for i,v in local_ipairs(t) do
  local_table_insert(t, i*2, v*2)
end
for k,v in local_pairs(t) do
  local_print(k, v)
end