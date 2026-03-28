local function manipulate_string(s)
    local result = ""
    for i = 1, 10 do
        if i > 5 then
            result = result .. s
        end
        local pattern = string.rep("x", i)
        s = string.gsub(s, pattern, "")
    end
    return s
end