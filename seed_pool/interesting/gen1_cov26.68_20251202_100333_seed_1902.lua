function coroutine_stress_test(depth)
    local function recurse(current_depth)
        if current_depth >= depth then
            return
        end
        local co = coroutine.create(function()
            recurse(current_depth + 1)
        end)
        coroutine.resume(co)
    end
    recurse(0)
end

local function coroutine_stress_test(depth)
    local function recurse(current_depth)
        if current_depth >= depth then
            return
        end
        local co = coroutine.create(function()
            recurse(current_depth + 1)
        end)
        coroutine.resume(co)
    end
    recurse(0)
end