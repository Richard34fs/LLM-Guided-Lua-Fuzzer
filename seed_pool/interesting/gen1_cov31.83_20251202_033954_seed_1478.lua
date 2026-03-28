function coroutine_recursion(depth)
    local co = coroutine.create(function()
        if depth > 0 then
            coroutine_recursion(depth - 1)
        end

        -- Inject error conditions:
        error("deliberate error")        -- directly raises an error
        assert(false, "deliberate assertion failure")  -- raises an assertion failure

        -- Invalid indexing within capturing blocks via pcall/xpcall:
        local status, result = pcall(function()
            return depth[1]   -- invalid indexing operation
        end)
    end)

    coroutine.resume(co)
end

coroutine_recursion(5000)