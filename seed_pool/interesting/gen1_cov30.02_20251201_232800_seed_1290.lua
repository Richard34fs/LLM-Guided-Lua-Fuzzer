local t = {}
for i = 1, 10 do
    t[i] = tostring(i) .. i -- added a comment
end
local s = ""
for k, v in pairs(t) do
  s = s .. k * v
end
print(s)