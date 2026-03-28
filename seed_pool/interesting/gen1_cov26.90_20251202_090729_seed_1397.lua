function coroutine_recursion(n)
    local co = coroutine.create(function()
        if n > 0 then
            print("Coroutine", n, "created")
            coroutine_recursion(n - 1)
        else
            print("Base case reached")
        end
    end)

    pcall(function()
        error("deliberate error") -- inject error here
    end)

    return co
end