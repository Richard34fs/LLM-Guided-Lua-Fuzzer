local t = setmetatable({}, {__index = function(t, k)
    if type(k) == 'number' then
        return t[tostring(k)]
    end
    return nil
end})
for i=1,1000 do
    t[tostring(i)] = i
    t[i] = i
end