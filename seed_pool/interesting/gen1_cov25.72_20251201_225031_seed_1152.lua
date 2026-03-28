local function generate_code(massive_strings)
    do
        local output = {}
        for _, str in ipairs(massive_strings) do
            local repeated_str = string.rep(str, 1000)
            local modified_str = string.gsub(repeated_str, "hello", "world")
            table.insert(output, modified_str)
        end
        return table.concat(output, "")
    end
end