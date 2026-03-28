function coroutine_stress_original(depth)
    if depth > 0 then
        local co = coroutine.create(function()
            coroutine_stress_original(depth - 1)
        end)
        coroutine.resume(co)
    else
        error("Stack overflow!")
    end
end

function coroutine_stress_mutated(depth)
    for _ = 1, depth do
        local co = coroutine.create(function()
            -- Replace the original recursive call with a fixed number of iterations
            print("Iteration")
        end)
        coroutine.resume(co)
    end
end

-- Test both functions
coroutine_stress_original(10000)
coroutine_stress_mutated(10000)