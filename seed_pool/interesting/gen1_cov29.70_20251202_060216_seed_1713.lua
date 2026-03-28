t = setmetatable({10}, {
    __add = function (a, b)
        return a[1] + #b["foo"]
    end
})
t["foo"] = "bar"
print(t + t)
for i = 1, 10 do
    t[i] = i
    print(type(t[i]))
end