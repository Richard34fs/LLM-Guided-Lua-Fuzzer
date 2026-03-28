function coroutine_stress_test(depth)
    local co = coroutine.create(function()
        if depth > 0 then
            coroutine_stress_test(depth - 1)   -- Multi-value expression
        end
    end)
    coroutine.resume(co)                      -- Single-value expression
end
coroutine_stress_test(5000)