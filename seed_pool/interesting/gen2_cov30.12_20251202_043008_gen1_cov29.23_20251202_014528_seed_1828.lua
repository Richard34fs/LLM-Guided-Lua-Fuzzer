function mixTypes(n)
    local t = {}
    for i = 1, n do
        if type(t[i]) == "number" then
            t[i] = tostring(i) .. i
        else
            t[i] = i + 0.5
        end

        -- Nested block
        do
            local a = i + 1
            local b = i - 1
            local sum = a + b

            if sum > 0 then
                print("Sum is positive")
            elseif sum < 0 then
                print("Sum is negative")
            else
                print("Sum is zero")
            end
        end
    end

    -- Closures
    local function add(a, b)
        return a + b
    end

    t.add = add
    setmetatable(t, {__add = function (a, b) return a.x + b.y end})

    return t
end