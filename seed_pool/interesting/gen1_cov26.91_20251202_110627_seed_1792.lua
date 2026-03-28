function coroutine_stress(n)
    local _G = _G

    local local_coroutine = {}
    function local_coroutine.create(func)
        return _G.coroutine.create(func)
    end
    function local_coroutine.resume(...)
        return _G.coroutine.resume(...)
    end

    local co = coroutine.create(function()
        return n * n
    end)
    local status, result = coroutine.resume(co)
    if status then
        print("Result: " .. result)
    else
        print("Error: " .. result)
    end
    local co = local_coroutine.create(function()
        return n * n
    end)
    local status, result = local_coroutine.resume(co)
    if status then
        print("Result: " .. result)
    else
        print("Error: " .. result)
    end
end