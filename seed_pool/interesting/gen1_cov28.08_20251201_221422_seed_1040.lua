function coroutine_stress(depth)
    local co = coroutine.create(function()
        if depth > 0 then
            coroutine_stress(depth - 1)
        end
    end)

    setmetatable(co, { __add = function(self, other)
        -- Insert your custom behavior here
    end })

    for _ in pairs(co) do
        print("Yielding from the top-level coroutine...")
        local value = coroutine.yield()
        print("Resumed with value:", value)
    end
end