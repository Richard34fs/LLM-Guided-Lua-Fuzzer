function coroutine_stress_test(depth, extra_arg)  -- Modified function definition with an extra argument
    local co = coroutine.create(function()
        if depth > 0 then
            coroutine_stress_test(depth - 1, extra_arg)
        end
    end)
    local status, result = coroutine.resume(co, extra_arg)  -- Modified function call with an extra argument
    return status, result
end