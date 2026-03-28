function coroutine_recursion(n)
    local co = coroutine.create(function()
        if n > 0 then
            print("Before yielding, n is", n)
            n = n & (coroutine_recursion(n - 1))   -- Mutated line
            print("After yielding, n is", n)
        end
        return n
    end)

    return coroutine.resume(co) and n + 1 or n
end

coroutine_recursion(5)