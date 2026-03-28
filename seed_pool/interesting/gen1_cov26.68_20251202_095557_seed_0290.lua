function coroutine_stress(n)
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

    return coroutine.resume(co)
end