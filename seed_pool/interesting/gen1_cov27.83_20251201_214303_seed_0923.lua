function coroutine_stress(n)
    local table = { insert = table.insert }  -- shadowing table.insert
    local ipairs = function() end           -- local version of ipairs
    local print = function(...)
        return ...                          -- local version of print
    end

    local function recurse(i)
        if i > n then
            return
        else
            recurse(i + 1)
        end
    end

    local co = coroutine.create(function()
        recurse(1)
    end)
    
    table.insert(co, "shadowed")          -- global table.insert
    print("global", co)                   -- global print
    
    table.insert(co, "local")            -- local table.insert
    print("local", co)                   -- local print

    local status, result = coroutine.resume(co)
    return status, result
end