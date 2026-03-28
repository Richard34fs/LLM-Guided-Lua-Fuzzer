local t = {}
for i = 1, 1000 do
local key = tostring(i) .. "a"
t[key] = i
end
print(#t)
print(t["1a"])