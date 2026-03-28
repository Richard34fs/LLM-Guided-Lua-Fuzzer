function manipulate_string(str)
    local result = ""
    local pattern = string.rep("a", 100000)
    for i = 1, 100 do
        str = bit.band(str, pattern) -- Replace 'string.gsub' with bitwise AND operator
        result = result .. str     -- Concatenate strings using bitwise OR operator
    end
    return result
end