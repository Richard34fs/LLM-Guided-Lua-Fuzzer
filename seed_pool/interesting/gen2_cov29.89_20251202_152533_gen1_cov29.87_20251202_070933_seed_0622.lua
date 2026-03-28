local t = {}
setmetatable(t, {__index = function(t, k) return "value" end})  -- metatable added
t.extra_field = "extra_value"   -- extra field added
for i = 1, 1000 do    -- loop modified
    t[i] = "value" .. i
    t["key" .. i] = "value" .. i
end
return t  -- mutated line added