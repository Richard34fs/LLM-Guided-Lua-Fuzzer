local t = {}
t["foo"] = 42
print(t["foo"])
local s = "10"
local n = tonumber(s)
print(n + 2)
for i = 1, 5 do
t[i] = i * 2
end
for k, v in pairs(t) do
print(k, v)
end