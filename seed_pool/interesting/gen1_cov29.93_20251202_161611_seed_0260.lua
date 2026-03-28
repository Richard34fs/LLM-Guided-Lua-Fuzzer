local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. tostring(i % 10)
    t[key] = i
end
print(#t)

local a, b, c = 1, 2, 3
print(a, b, c)

local d
d = 4
print(d)

if true then
    local e = 5
    print(e)
end