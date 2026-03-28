local t = {a=1}
local meta_t = {}
setmetatable(t, meta_t)
meta_t.__index = function(table, key)
    return "fallback value"
end
print(t[t])  -- prints "fallback value"
local s = "1"
s = s + 1    -- error: attempt to perform arithmetic on a string value
for i = 1, 10 do
    meta_t.__concat = function(left, right)
        return left .. " concatenated with " .. right
    end
    i = i .. ""   -- prints "1 concatenated with "
    print(i)
end