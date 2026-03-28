function manipulate_string(s)
    local pattern = "^(.-)" .. string.rep("%", #s)
    local result = ""

    local insert  -- Declare `insert` as a local variable
    for i = 1, #s do
        local match = string.match(s, pattern)
        s = string.sub(s, #match + 1)
        result = result .. match

        insert = table.insert  -- Assign the global `table.insert` to `insert`
        insert(result, match)  -- Invoke the global `table.insert`
    end

    local function insert(t, value)  -- Define a local `insert` function
        table.insert(t, value)      -- That invokes the global `table.insert`
    end
    insert(result, match)           -- Invoke the local `insert`

    return result
end