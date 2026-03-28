function coroutine_func(input)
    local co = coroutine.create(function()
        return input + 1
    end)
    local status, result = coroutine.resume(co)
    if status then
        return result
    else
        error("Coroutine failed: " .. result)
    end
end

-- Mutated code using a while loop:
function coroutine_func(input)
    local co = coroutine.create(function()
        return input + 1
    end)
    local status, result = coroutine.resume(co)
    local i = 0
    while status and i < 5 do   -- Condition added to limit the number of iterations
        if status then
            return result
        else
            error("Coroutine failed: " .. result)
        end
        i = i + 1    -- Increment added to limit the number of iterations
    end
end