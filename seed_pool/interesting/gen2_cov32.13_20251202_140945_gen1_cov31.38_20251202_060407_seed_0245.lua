local code = [[
    local t = {1, "2", [3]  = 4}
    for i = 1, 3 do
        t[i] = t[i] + 1
        t[i  + 1] = t[i] * 2
    end
    print(t[1], t[2], t[3])

    local _table_insert = table.insert    -- shadow built-in function `table.insert` with a local version
    function table.insert(...)
        print("Shadowing `table.insert()'")
        return _table_insert(...)        -- invoke the global `table.insert()`
    end
    table.insert(t, "foo")              -- invoke the local `table.insert()`
    print(#t, t[#t])
]]
load(code)()