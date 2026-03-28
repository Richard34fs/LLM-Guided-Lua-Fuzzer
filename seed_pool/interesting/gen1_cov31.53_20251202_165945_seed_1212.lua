local t = setmetatable({}, {__index = function(t, k)
  if type(k) == "number" then
    return tostring(k) .. "string"
  end
end})
t["123"] = 456
print(t[123])
for i = 1, 10 do
  t[i] = tostring(i) .. "string"
end
print(t[5])
local a, b = 1, "2"
a = a + b
print(a)