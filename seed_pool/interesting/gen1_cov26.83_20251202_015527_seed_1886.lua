function manipulate_massive_strings(num_iterations)
    local result = ""
    for i = 1, num_iterations do
        result = result .. string.rep("a", i) .. "\n"
    end
    result = string.gsub(result, "a+", function(match)
        return string.rep("b", #match)
    end)
    result = bit32.band(result, 0xFF) -- Apply bitwise AND with 0xFF
    return result
end