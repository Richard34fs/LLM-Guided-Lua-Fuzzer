function coroutine_stress_test(n)
    local function recurse(i)
        if i < n then
            return recurse(i + 1, nil) -- Inserted extra value "nil"
        else
            return i
        end
    end

    local co = coroutine.create(function()
        return recurse(1)
    end)

    local status, result = coroutine.resume(co)
    return status and result
end