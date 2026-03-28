local t = {}
t["1"] = "one"
t[1] = 1
for k, v in pairs(t) do
print(k .. ": " .. tostring(v))
end