function coroutine_recursion(n)
    local co = coroutine.create(function()
        if n <= 0 then
            return
        else
            coroutine_recursion(n - 1)
            print(coroutine.yield())
        end
    end)
    for i = 1, n do
        coroutine.resume(co, i)
    end
end
coroutine_recursion(10)