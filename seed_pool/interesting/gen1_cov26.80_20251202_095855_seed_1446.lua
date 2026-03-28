local function churn_memory()
    local t, i  -- Reorder local variable declarations
    for i = 1, 100 do
        t = setmetatable({}, { __mode = 'kv' })  -- Interleave expressions
        for k, v in pairs(t) do
            t[k] = nil
        end
        collectgarbage()
    end
    local temp_tables = {} -- Declare variables after their usage
end