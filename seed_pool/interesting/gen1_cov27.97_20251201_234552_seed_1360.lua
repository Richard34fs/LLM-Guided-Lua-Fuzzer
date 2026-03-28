function recursive_variadic_function(...)
    local args = {...}
    if #args > 0 then
        local i = 1
        while i <= #args do
            recursive_variadic_function(args[i])
            i = i + 1
        end
    end
end