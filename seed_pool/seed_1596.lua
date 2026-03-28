local t = {}
for i=1,10 do
t[i] = i*2
end
local s = ""
for k,v in pairs(t) do
s = s .. tostring(k+v)
end
print(s)
local n = 0
for i=1,#s do
n = n + string.byte(s,i)
end
print(n)