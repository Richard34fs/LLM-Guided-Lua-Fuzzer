local t = {}  -- metatable added
setmetatable(t, {__tostring = function() return "42" end})
print(t)      -- invokes __tostring method
local x = "10" + 2
print(x)
for i = 1, 5 do
    if i % 2 == 0 then
        i = tostring(i)
    else
        i = tonumber(i)
    end
    print(i)
end