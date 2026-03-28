function coroutine_stress_test(max_depth)
    local table = { insert = table.insert } -- Shadowing table.insert with a local variable
    local ipairs = function() -- Creating a closure for the ipairs function
        print("Using the local ipairs")
        return pairs
    end

    local function recurse(current_depth)
        if current_depth < max_depth then
            return coroutine.yield(recurse(current_depth + 1))
        else
            return current_depth
        end
    end

    local co = coroutine.create(function()
        return recurse(1)
    end)

    return coroutine.resume(co)
end