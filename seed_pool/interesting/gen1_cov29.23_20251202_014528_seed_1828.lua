function mixTypes(n)
    local t = {}
    for i = 1, n do
        if type(t[i]) == "number" then
            t[i] = tostring(i) .. i
        else
            t[i] = i + 0.5
        end
    end
    setmetatable(t, {__add = function (a, b) return a.x + b.y end})

    return t
end