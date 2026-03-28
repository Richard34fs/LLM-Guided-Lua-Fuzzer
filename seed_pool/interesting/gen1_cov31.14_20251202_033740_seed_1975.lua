function coroutine_stress(n)
    if n > 0 then
        local co = coroutine.create(function()
            coroutine_stress(n - 1)
        end)
        coroutine.resume(co)
    end
    local t = {n} -- Table constructor mutation
    x, y = 1    -- Multiple assignment mutation
    local a, b, c = 1    -- Local declaration mutation
end
coroutine_stress(10000)