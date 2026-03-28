function coroutine_stress(depth)
    if depth > 0 then
        local co = coroutine.create(function()
            error("Error injection")  -- Injected error
            pcall(function()
                coroutine_stress(depth - 1)
            end)
        end)
        coroutine.resume(co)
    else
        invalid_table[1] = "Indexation of an invalid table"  -- Indexation of an invalid table
    end
end
local table = { insert = table.insert, pairs = ipairs, print = print }  -- Local version of table library
function table.insert(...)
    print("Shadowing table.insert")
    return _G.table.insert(...)
end
function table.pairs(...)
    print("Shadowing table.pairs")
    return _G.table.pairs(...)
end
function table.print(...)
    print("Shadowing table.print")
    return _G.table.print(...)
end
coroutine_stress(10000)