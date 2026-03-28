function coroutine_recursion(n)
    if n <= 0 then
        return 0
    else
        local co = coroutine.create(function()
            return coroutine_recursion(n - 1)
        end)
        local status, result = coroutine.resume(co)
        
        -- Inject an error using error()
        error("Error injected in the code")
        
        return result
    end
end