local function manipulate_massive_strings(num_iterations)
    local result = ""
    for i = 1, num_iterations do
        result = result .. string.rep("x", i) .. "\n"
        collectgarbage()
    end
    return result
end

local function manipulate_massive_strings(num_iterations)
    local result = ""
    for i = 1, num_iterations do
        result = result .. string.rep("x", i) .. "\n"
        do
            collectgarbage()
        end
    end
    return result
end