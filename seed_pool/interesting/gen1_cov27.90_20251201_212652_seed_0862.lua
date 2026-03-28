function coroutine_stress_test(n)
    local function recurse(i)
        if i > n then
            return 1
        else
            return recurse(i + 1) + 1
        end
    end

    local metatable = {
        __add = function(a, b)
            return a.value + b.value
        end,
        __mul = function(a, b)
            return a.value * b.value
        end
    }
    local complex_table = {
        value = recurse(1),
        metatable = metatable
    }
    setmetatable(complex_table, metatable)

    assert(complex_table == n + 1)
end