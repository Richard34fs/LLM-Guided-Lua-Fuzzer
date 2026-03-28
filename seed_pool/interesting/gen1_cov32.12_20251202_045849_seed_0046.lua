local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "foo"
    t[key] = i
    if i % 2 == 0 then
        setmetatable(t, { __gc = function() print("GC called!") end })
    end
end
print(#t)