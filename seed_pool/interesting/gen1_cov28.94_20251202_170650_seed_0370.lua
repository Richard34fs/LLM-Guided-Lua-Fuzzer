local t = {}
t["foo"] = "bar"
t[1] = 2
for i = 1, 10 do
    if type(t[i]) == "number" then
        t[i] = tostring(t[i])
    else
        t[i] = tonumber(t[i])
    end
end
print(t["foo"])
print(t[1])
print(t[2])
return t