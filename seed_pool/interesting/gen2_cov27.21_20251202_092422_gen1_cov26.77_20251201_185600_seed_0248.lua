function f(...)
    local args = {...}
    if #args == 0 then
        return "Stack limit reached"
    else
        local co = coroutine.create(function()
            return f(unpack(args))
        end)
        local status, result = coroutine.resume(co)
        return result
    end
end