function coroutine_recursion(n)
    local co = coroutine.create(function()
        if n > 0 then
            print("Recursion level:", n)
            return coroutine_recursion(n - 1) -- Mutated line
        else
            error("Stack overflow!")
        end
    end)

    local status, err = coroutine.resume(co)
    if not status then
        print("Error:", err)
    end
end