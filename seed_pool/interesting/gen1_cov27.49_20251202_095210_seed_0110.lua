function coroutine_stress_test(n)
    local function recurse(i)
        if i < n then
            return recurse(i + 1)
        else
            return i
        end
    end

    local co = coroutine.create(function()
        return recurse(1)
    end)

    setmetatable(co, { __add = function(a, b) return a + b end })

    return coroutine.resume(co)
end