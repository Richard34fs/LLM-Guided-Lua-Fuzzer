local function manipulate_string(s)
    local result = ""
    local i = 1
    while i <= 10 do
        local pattern = string.rep("x", i)
        s = string.gsub(s, pattern, "")
        i = i + 1
    end

    return result, s
end