function coroutine_recursion(depth)
    if depth > 0 then
        local co = coroutine.create(
            function()
                return coroutine_recursion(depth - 1)
            end
        )
        local status, value = coroutine.resume(co)
        return value
    else
        local table_with_metatable = {}
        setmetatable(table_with_metatable, { __gc = function() print("Perform cleanup actions here") end })
        return depth
    end
end