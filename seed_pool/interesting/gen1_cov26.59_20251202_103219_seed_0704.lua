local function create_churner(count)
    do
        local tables = {}
        for i = 1, count do
            local t = setmetatable({}, {__mode = "kv"})
            t[1] = i
            tables[i] = t
        end
        for i = 1, count do
            tables[i] = nil
        end
        tables = nil
    end
    collectgarbage()
end