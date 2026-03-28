function manipulate_strings(n)
    local result = ""

    -- Override the table.insert function with a closure that stores it in a local variable
    local local_insert = function(t, pos, value)
        table.insert(t, pos, value)
    end

    for i = 1, n do
        result = result .. string.rep(" ", i) .. string.gsub("abc", ".", "%1") .. "\n"

        -- Invoke both the global table.insert function and the local closure
        table.insert({}, i, i)
        local_insert({}, i, i)
    end

    -- Test the shadowing behavior by checking whether the global table.insert function is overridden
    if table.insert ~= local_insert then
        return "Shadowing not working as expected"
    end

    -- Verify the scope and binding of the functions by checking whether the local variable is accessible outside the closure
    if local_insert == nil then
        return "Local variable out of scope"
    end

    return result
end