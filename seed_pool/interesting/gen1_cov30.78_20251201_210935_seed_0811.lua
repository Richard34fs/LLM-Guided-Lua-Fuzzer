local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "_" .. i % 10
    if i > 500 then
        t[key] = i >> 1
    else
        t[key] = i & 0xFF
    end
end