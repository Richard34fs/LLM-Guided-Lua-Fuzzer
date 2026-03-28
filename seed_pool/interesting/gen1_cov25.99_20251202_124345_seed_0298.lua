local function manipulate_string(str)
    local new_str = ""
    for i = 1, 10 do
        new_str = new_str .. string.rep("x", 10000)
    end

    do -- Aninhamento de blocos
        new_str = string.gsub(new_str, "xxxxxxxxxx", "")
    end

    return new_str
end