function generate_lua_code(str)
    local result = ""
    i = 1
    while i <= #str do
        char = str:sub(i, i)
        if char == "a" then
            result = result .. string.rep("b", 5)
        elseif char == "b" then
            result = result .. string.rep("c", 10)
        else
            result = result .. char
        end
    i = i + 1
    end
    return result
end