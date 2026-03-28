function coroutine_recursion(n)
    if n == 0 then
        return 1
    else
        local co = coroutine.create(function()
            return coroutine_recursion(n - 1)
        end)
        local status, result = coroutine.resume(co)
        assert(status, result)

        -- Insert deliberate error injection here
        error('deliberate error')
        assert(false, 'deliberate assertion failure')
        local invalid_index = result[9999]

        return result + 1
    end
end