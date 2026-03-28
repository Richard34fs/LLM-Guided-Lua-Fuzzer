t = {}
for i=1,1000 do
    t[tostring(i)] = i
    t[i] = i
    if i % 2 == 0 then
        setmetatable(t, {__gc = function() print("Garbage collection triggered") end})
    end
end
print(#t)