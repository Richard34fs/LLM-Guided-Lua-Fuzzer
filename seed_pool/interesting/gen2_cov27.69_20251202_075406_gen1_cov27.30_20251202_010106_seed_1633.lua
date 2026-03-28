local original_package_path = package.path
function variadic_func(...)
    local args = {...}
    return (function()
        if #args == 0 then
            return "No more arguments"
        end
        local next_arg = table.remove(args)
        print("Current argument:", next_arg)
        return variadic_func(unpack(args))
    end)()
end
package.path = original_package_path