local function manipulate_string(s)
    local result = ""
    for i = 1, 10 do
        local pattern = string.rep("x", i)
        s = string.gsub(s, pattern, "")
    end

    return result, s -- return two values
end