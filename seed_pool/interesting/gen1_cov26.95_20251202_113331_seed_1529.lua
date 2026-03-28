function manipulate_massive_strings(num_iterations)
    local result = ""
    for i = 1, num_iterations do
        local str_1000_a = string.rep("a", 1000)
        local str_1000_b = string.gsub(str_1000_a, "aaa", "b")
        result = result .. str_1000_b

        local metatable = {
            __gc = function()
                -- Finalizer code goes here
            end
        }

        setmetatable(str_1000_a, metatable)
    end

    return result
end