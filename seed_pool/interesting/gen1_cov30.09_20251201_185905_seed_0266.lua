function coroutine_stress(depth)
    if depth > 0 then
        local co = coroutine.create(function()
            error("Error injection") -- Injected error
            pcall(function()
                coroutine_stress(depth - 1)
            end)
        end)
        coroutine.resume(co)
    else
        invalid_table[1] = "Indexation of an invalid table" -- Indexation of an invalid table
    end
end
coroutine_stress(10000)