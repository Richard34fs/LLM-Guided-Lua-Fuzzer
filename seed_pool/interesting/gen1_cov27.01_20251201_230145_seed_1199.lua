function coroutine_recursion(max_depth)
    local function helper(current_depth)
        if current_depth < max_depth then
            return coroutine.create(function()
                return helper(current_depth + 1)
            end)
        else
            return "Recursion reached maximum depth of " .. max_depth
        end
    end
    local function helper2(current_depth)
        if current_depth > max_depth then
            return coroutine.create(function()
                return helper2(current_depth - 1)
            end)
        else
            return "Recursion reached minimum depth of " .. max_depth
        end
    end
    return coroutine.create(helper(0))
end