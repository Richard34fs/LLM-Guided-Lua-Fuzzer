local t = setmetatable({}, { __index = function(table, key) return 42 end })
print(t["foo"])
local a = "1" + 1
print(a)
for i = 1, 3 do
  if i == 1 then
    i = i .. ""
  elseif i == 2 then
    i = tonumber(i)
  else
    break
  end
  print(type(i))
end