function coroutine_stress(n)
    local function f(i)
        if i > n then
            return i
        end
        return f(f(i + 1))
    end

    local co = coroutine.create(function()
        return f(1)
    end)

    local status, result = coroutine.resume(co)
    return result
end