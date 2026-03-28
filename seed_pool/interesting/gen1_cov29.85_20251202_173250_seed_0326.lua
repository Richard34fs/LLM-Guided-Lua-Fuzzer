local t = {}  -- Simple table constructor
setmetatable(t, {__index = function() return 3 end})  -- Table with metatables
print(t[t])  -- Printing the table's value using its own key
for i = 1, 5 do
    if i == 2 then
        t[i] = "two"  -- Field with a string value
    end
    if i == 3 then
        t[i] = true  -- Field with a boolean value
    end
    print(t[i])
end