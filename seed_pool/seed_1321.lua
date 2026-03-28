local t = {}
for i=1,10 do
t[i] = i*2
end
local s = ""
for k,v in pairs(t) do
s = s .. tostring(k) .. "," .. tostring(v) .. ";"
end
print(s)