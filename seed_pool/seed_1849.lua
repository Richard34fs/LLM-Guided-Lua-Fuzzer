local t = {}
t[1] = 2
for i = 1, #t do
local s = "3"
local n = tonumber(s)
local b = (n > 0)
if b then
t[i] = t[i] + 1
end
s = tostring(t[i])
print(type(t[i]), type(s))
end