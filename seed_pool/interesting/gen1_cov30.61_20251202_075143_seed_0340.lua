for i = 1, 100 do
    local t = {}
    setmetatable(t, {__mode = 'kv'})

    -- Override built-in functions with local versions (closures)
    local insert = table.insert
    local ipairs = ipairs
    local print = print

    for j = 1, 1000 do
        insert(t, j)    -- Invoke the local version of `table.insert`
    end
    
    -- Invoke the global version of `print`
    print("The global `print` function is being invoked.")
    
    for k, v in ipairs(t) do
        print(k, v)     -- Invoke the global version of `ipairs` and `print`
    end

    t = nil
    collectgarbage()
end