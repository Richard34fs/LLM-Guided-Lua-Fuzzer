function coroutine_stress(n)
    local co = coroutine.create(function()
        return n - 1
    end)
    local status, result = coroutine.resume(co)
    if not status then
        error("Error occurred in coroutine resume")
    end
    return result
end