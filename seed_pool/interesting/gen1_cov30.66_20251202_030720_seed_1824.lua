function coroutine1(n)
    if n <= 0 then
        return
    end
    local co = coroutine.create(function()
        return coroutine1(n - 1)
    end)
    print(coroutine.resume(co))
end
coroutine1(10000)