function variadic_func(...)
    local args = {...}
    if #args == 0 then
        return "No more arguments"
    else
        return variadic_func(unpack(args))
    end
end
local t = {}
setmetatable(t, {__gc = function() print("Finalizing table") end})