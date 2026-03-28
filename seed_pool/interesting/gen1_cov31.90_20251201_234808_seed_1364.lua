local t = {}
setmetatable(t, {
    __index = function(table, key)
        return "default value"
    end
})
print(t["foo"])  -- Prints "default value"
for i = 1, 5 do
    if i % 2 == 0 then
        t[i] = i * 2
    else
        t[i] = "string" .. i
    end
end
for k, v in pairs(t) do
    print(k, v)
end