function mixTypes(numIterations)
    local t = {
        __add = function(a, b) return a + b end,
        __sub = function(a, b) return a - b end,
        __mul = function(a, b) return a * b end,
        __div = function(a, b) return a / b end
    }

    for i = 1, numIterations do
        if type(t[i]) == "number" then
            t[i] = tostring(t[i]) .. "foo"
        elseif type(t[i]) == "string" then
            t[i] = tonumber(string.sub(t[i], 1, -4)) + 10
        else
            t[i] = i * 2
        end
    end

    return t
end