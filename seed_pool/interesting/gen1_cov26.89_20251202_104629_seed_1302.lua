function manipulate_string(input)
    local repeated = string.rep(input, 1000)
    local modified = string.gsub(repeated, "abc", "def")
    local result = ""
    for i = 1, #modified do
        result = result .. string.sub(modified, i, i)
    end
    
    -- Add the following code to apply the mutation strategy:
    local table_insert = table.insert
    local ipairs = ipairs
    local print = print
    
    table_insert(_ENV, "local_variable", 123)
    for k, v in ipairs(_ENV) do
        print(k, v)
    end
    
    return result
end