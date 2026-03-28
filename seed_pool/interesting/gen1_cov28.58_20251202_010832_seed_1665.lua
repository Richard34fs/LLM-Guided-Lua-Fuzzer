local function create_memory_churn()
    local count = 1000000
    for _ = 1, count do
        local temp_table = setmetatable({}, {__mode = 'kv'})

        -- Local version of setmetatable
        local local_setmetatable = function(t, metatable)
            if type(t) ~= "table" then
                error("bad argument #1 to 'setmetatable' (table expected, got " .. type(t) .. ")", 2)
            end

            if metatable and type(metatable) ~= "table" then
                error("bad argument #2 to 'setmetatable' (nil or table expected, got " .. type(metatable) .. ")", 2)
            end
            rawset(t, "__metatable", metatable)

            return t
        end

        temp_table = nil
        collectgarbage()

        -- Invoke both the global and local versions of setmetatable
        setmetatable({}, {__mode = 'kv'})
        local_setmetatable({}, {__mode = 'kv'})
    end
end