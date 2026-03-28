function mutate_metatable(original_table)
    local metatable = {
        __index = function(table, key)
            if key == "c" then
                return "d"
            end
        end,
        __newindex = function(table, key, value)
            if key == "e" then
                table[key] = value
            end
        end,
        __add = function(a, b)
            return a.x + b.x
        end,
        __concat = function(a, b)
            return tostring(a) .. tostring(b)
        end,
        __len = function(table)
            local count = 0
            for _ in pairs(table) do
                count = count + 1
            end
            return count
        end,
        __call = function(table, ...)
            if table.f then
                return table.f(...)
            end
        end
    }
    setmetatable(original_table, metatable)

    return original_table
end