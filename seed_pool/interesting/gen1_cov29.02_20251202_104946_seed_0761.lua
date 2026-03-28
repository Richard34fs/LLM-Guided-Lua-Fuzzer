function variadic_function(...)
    local args = {...}

    if #args > 0 then
        for i = 1, #args do
            variadic_function(args[i])
        end

        -- or

        for _, arg in ipairs(args) do
            variadic_function(arg)
        end

        -- or

        local i = 1
        while i <= #args do
            variadic_function(args[i])
            i = i + 1
        end

        -- or

        local i = 1
        repeat
            variadic_function(args[i])
            i = i + 1
        until i > #args
    end
end