local t = {}
for i=1,10 do
  t[i] = i*2
end
local s = ""
function f(k,v)
  s = s .. tostring(k) .. "," .. tostring(v) .. ";"
end
for k,v in pairs(t) do
  f(k,v)
end
print(s)