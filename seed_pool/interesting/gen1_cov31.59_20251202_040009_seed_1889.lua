local t = {}
for i=1,10 do
  local a, b = i*2, i*3
  t[i] = a + b
end
local s = ""
for k,v in pairs(t) do
  if k == 5 then
    s = s .. tostring(k) .. " -> " .. tostring(v) .. "\n"
  end
  s = s .. tostring(k) .. " -> " .. tostring(v) .. "\n"
end
print(s)