local t = {}
t["foo"] = 42
t[8] = "bar"
for i = 1, 3 do
    if type(t[i]) == "number" then
        t[i] = t[i] + 10
    else
        t[i] = 0
    end
end
print(t["foo"] .. t[2] .. t[3])