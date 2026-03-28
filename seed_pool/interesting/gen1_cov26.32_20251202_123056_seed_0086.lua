local function manipulate_string(input_str)
    local output_str = ""
    local replaced_str = string.gsub(input_str, "pattern", "")

    local insert = table.insert  -- capture the global `table.insert`
    local print = print        -- capture the global `print`

    local function my_insert(t, value)
        insert(t, value)      -- call the captured `table.insert`
    end

    local function my_print(...)
        print(...)             -- call the captured `print`
    end

    for i = 1, 10 do
        output_str = output_str .. string.rep(replaced_str, i)
    end
    
    return output_str
end