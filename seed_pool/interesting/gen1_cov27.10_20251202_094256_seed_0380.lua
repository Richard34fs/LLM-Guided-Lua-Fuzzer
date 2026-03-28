function coroutine_deep_recursion(num)
    local co = coroutine.create(function()
        while num > 0 do
            print("Before yield", num)
            coroutine.yield()
            print("After yield", num)
            num = num - 1
        end
    end)

    coroutine.resume(co)
end