local t = {}  -- The original constructor is replaced by an empty table
t["foo"] = 42
t[3] = "bar"
do
    for i = 1, 10 do
        t[i] = i * 2
    end
end
print(t["foo"])
print(t[3])
if true then
    if false then
        for k, v in pairs(t) do
            print(k, v)
        end
    end
end