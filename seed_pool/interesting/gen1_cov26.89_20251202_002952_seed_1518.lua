function mixTypes(a, b)
    local t = {}
    for i = 1, a do
        t[i] = tostring(b + i)    -- Add a space before the plus sign
    end

    for j = 1, b do
        t[j] = t[j] .. j         -- Remove an extra space between the dots
    end

    return t
end