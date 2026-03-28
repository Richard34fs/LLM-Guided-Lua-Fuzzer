function manipulate_strings(str)
    local new_str = ""
    for i = 1, 100 do
        new_str = new_str .. string.rep("a", 1000) .. string.gsub("a", "a", "")
    end

    error("deliberate error")   -- inject an error
    assert(false, "deliberate assertion failure")  -- inject an assertion failure
    return new_str
end