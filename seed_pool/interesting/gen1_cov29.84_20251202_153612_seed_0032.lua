local t = {}
for i = 1, 10 do
t[i] = tostring(i)
end
for k, v in pairs(t) do
    local key, val = k, v   -- New line added for multiple return value
    t[val] = tonumber(key)
end
for i = 1, #t do
if type(t[i]) == "number" then
    local val = t[i]        -- New line added for multiple return value
    t[i] = tostring(val)   -- Multiple return value used here
else
    t[i] = tonumber(t[i])
end
end