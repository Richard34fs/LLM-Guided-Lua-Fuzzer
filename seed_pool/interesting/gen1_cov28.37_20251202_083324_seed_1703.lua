function coroutine_nesting(n)
    local function helper(i)
        if i > 0 then
            print("Coroutine", n, "yielding", i)
            return coroutine.yield(helper(i - 1))
        else
            return i
        end
    end

    local co = coroutine.create(function()
        return helper(n)
    end)

    repeat
        status, result = coroutine.resume(co)
        if status then
            print("Coroutine", n, "resumed with result:", result)
        else
            print("Coroutine", n, "terminated with error:", result)
        end
    until not status or result == 0

    return co
end