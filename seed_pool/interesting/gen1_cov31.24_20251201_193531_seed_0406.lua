local t = {}
for i=1,1000 do
    local key = (i % 3 == 0) and tostring(i) or i
    t[key] = i
end
do
    local t2 = {}
    for k,v in pairs(t) do
        if type(k) ~= "number" then
            t2[k] = v
        end
    end
    t = t2
end