local function manipulate_strings(num_iterations)
    local result = ""
    for i = 1, num_iterations do
        local pattern = string.rep("a", i) .. "b"
        local replacement = string.rep("c", i)
        if i == 3 then
            error("deliberate error")  -- Inject an error at the third iteration
        end
        result = result .. string.gsub("abba", pattern, replacement)
    end
    return result
end