function manipulate_string(str)
    local count = 0
    local function is_char_a(char)
        if char == "a" then
            count = count + 1
        end
    end

    local function process_string()
        for i = 1, #str do
            is_char_a(str:sub(i, i))
        end

        local repeated = string.rep("b", count)
        replaced = string.gsub(str, "c", "d")
        return str .. repeated .. replaced
    end

    return process_string()
end