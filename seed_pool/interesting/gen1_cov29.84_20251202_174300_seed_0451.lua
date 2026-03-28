local t = {}
t["123"] = "abc"
t[456] = 789
do
    for i = 1, 10 do
        local function inner()
            t[i] = t[i] or {}
            t[i][i] = (t[i][i] or 0) + 1
        end
        inner()
    end
end
print(t["123"])
print(t[456])
for i = 1, 10 do
    print(t[i][i])
end