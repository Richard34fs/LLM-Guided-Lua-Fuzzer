local t = {}
for i = 1, 1000 do
    local key = math.random(1, 100)
    if math.random() < 0.5 then
        key = tostring(key)
    end
    t[key] = i
end