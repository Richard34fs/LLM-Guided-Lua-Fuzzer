local t = {__metatable="test", foo=42}
t["foo"] = 42
print(t["foo"])
local s = "5"
s = s + 1
for i = 1, 3 do
  if i == 1 then
    i = tostring(i)
  elseif i == 2 then
    i = tonumber(i)
  else
    break
  end
  print(i + 1)
end