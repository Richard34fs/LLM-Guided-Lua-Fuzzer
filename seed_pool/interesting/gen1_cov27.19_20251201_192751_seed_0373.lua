function metatable_mutation(original_table)
    local new_metatable = {}
    for k, v in pairs(original_table) do
        if type(v) == "function" then
            new_metatable[k] = function(...)
                -- Your mutation strategy here
            end
        else
            new_metatable[k] = v
        end
    end

    setmetatable(original_table, new_metatable)
end