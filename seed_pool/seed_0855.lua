local t = {}
for i=1,10 do
t[i] = i
end
local s = ""
for k,v in pairs(t) do
s = s .. tostring(k+v)
end
local n = 0
for i=1,#s do
n = n + string.byte(s:sub(i,i))
end
print(n)