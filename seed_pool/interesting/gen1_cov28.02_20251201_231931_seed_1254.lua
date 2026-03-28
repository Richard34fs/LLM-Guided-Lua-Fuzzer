function mixTypes(n)
    local t = {}
    for i = 1, n do
        if i % 2 == 0 then
            t[i] = i + 1
        else
            t[i] = tostring(i * 2), i  -- Mutation applied here
        end
    end
    return t
end