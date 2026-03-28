function coroutine_stress(n)
    if n <= 0 then
        return
    end

    local co = coroutine.create(function()
        coroutine_stress(n - 1)
    end)

    local status, value = coroutine.resume(co)
    if not status then
        error(value) -- Injected error
    end
end