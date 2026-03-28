local t = {}
local a, b, c = 1, 2, 3
t[a] = b
t[c] = a
t["foo"] = "bar"
for i = 1, 1000 do
    local key = tostring(i) .. "foo"
    t[key] = i
end
for i = 1, 1000 do
    local key = i + 0.5
    t[key] = i
end