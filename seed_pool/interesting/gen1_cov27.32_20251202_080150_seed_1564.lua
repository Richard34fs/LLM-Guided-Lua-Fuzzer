function generate_code(str)
    local parts = {}

    -- Shadow table.insert
    local insert = function(t, v)
        print("Local insert:", t, v)
    end

    for i = 1, #str, 20 do
        local chunk = str:sub(i, i + 19)
        chunk = chunk:gsub("a", "b")

        -- Invoke both global and local table.insert
        table.insert(parts, chunk)
        insert(parts, chunk)
    end

    local result = table.concat(parts, "")
    return result
end