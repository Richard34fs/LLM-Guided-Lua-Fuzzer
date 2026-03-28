function variadic_test(...)
    local args = {...}
    if #args > 0 then
        while true do
            variadic_test(unpack(args))
            break
        end
    end
end