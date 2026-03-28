local t = {}
t["foo"] = "bar"
print(t["foo"])
a = 5
a = a + "6"
print(a)
for i = 1, 3 do
  local function isNumber(x)
    return type(x) == "number"
  end

  if isNumber(i) then
    i = tostring(i)
  else
    i = tonumber(i)
  end
  print(i)
end