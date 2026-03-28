function coroutine_stress_test(depth)
    if depth > 0 then
        local a, b, c = 1, 2, 3   -- Multiple declarations
        local d = 4               -- Single declaration
        local e, f = 5, 6         -- Separate assignment lines

        local co = coroutine.create(function()
            coroutine_stress_test(depth - 1)
        end)

        coroutine.resume(co)
    else
        error("Stack overflow!")
    end
end

coroutine_stress_test(10000)