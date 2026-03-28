local t = {}
t["1\n2"] = "one\ntwo"
t[1] = 1e10
for k, v in pairs(t) do
    print(k .. ": " .. tostring(v))
end