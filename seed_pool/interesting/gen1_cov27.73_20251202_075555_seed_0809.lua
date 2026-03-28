local function manipulate_string(s)
    local result = ""
    local i = 1
    while i <= #s do
        if string.match(s, ".*") then
            result = result .. string.rep("x", 20000)
        else
            result = result .. s:sub(i, i)
        end
        i = i + 1
    end
    return result
end