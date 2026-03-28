function manipulate_strings(n)
    local result = ""
    for i = 1, n do
        local pattern = string.rep("a", i) .. "b"
        result = result .. string.gsub("ababab", pattern, "")
    end

    -- Inject errors using error functions and invalid indexing
    pcall(function() error("deliberate_error") end)
    pcall(function() assert(false, "deliberate_assertion_failure") end)
    result[10] = "invalid_index"
    return result
end