function generate_code(str)
    local pattern = "([%a ]+)#([%d]+)#([%a ]+)"
    local replaced_str = string.gsub(str, pattern, "\n") -- modified literal
    local repeated_str = string.rep(replaced_str, 2)   -- modified literal
    local concatenated_str = ""
    for i = 1, 5 do
        concatenated_str = concatenated_str .. repeated_str
    end

    return concatenated_str
end