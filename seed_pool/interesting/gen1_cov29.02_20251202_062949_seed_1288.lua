local t = {}
for i=1,10 do
t[i] = i
end
local function get_pairs(table)
  return pairs(table)
end
for k,v in get_pairs(t) do
  print(k .. v)
end