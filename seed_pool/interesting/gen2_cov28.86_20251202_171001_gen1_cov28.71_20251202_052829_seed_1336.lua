local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "_key"
    t[key] = i
end
print(t["1_key"])

local a, b, c = 1, 2, 3
a = 4
b = 5
c = 6
print(a, b, c)