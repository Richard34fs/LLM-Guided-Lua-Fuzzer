function coroutine_recursion(depth)
    if depth > 0 then
        local function helper()
            coroutine_recursion(depth - 1)
        end

        local co = coroutine.create(helper)
        coroutine.resume(co)
    else
        print("Recursion completed")
    end
end
coroutine_recursion(50000)