local t = {}
for i = 1, 1000 do
    local key = tostring(i)
    t[key] = i * 2
end
function get_value(t, key)
    return t[key]
end
get_value(t, "500") -- returns 1000