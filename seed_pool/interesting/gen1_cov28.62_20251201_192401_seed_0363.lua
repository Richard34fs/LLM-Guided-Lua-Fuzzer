local function churn_memory()
    local temp_tables = {}
    for i = 1, 100 do
        local temp_table = setmetatable({}, {__mode = "kv"})
        temp_tables[i] = temp_table
        temp_table = nil
    end
    for i = 1, 100 do
        collectgarbage()
    end
end
local code = 'local function churn_memory()' .. '\n' ..
            '    local temp_tables = {}' .. '\n' ..
            '    for i = 1, 100 do' .. '\n' ..
            '        local temp_table = setmetatable({}, {__mode = "kv"})' .. '\n' ..
            '        temp_tables[i] = temp_table' .. '\n' ..
            '        temp_table = nil' .. '\n' ..
            '    end' .. '\n' ..
            '    for i = 1, 100 do' .. '\n' ..
            '        collectgarbage()' .. '\n' ..
            '    end' .. '\n' ..
            'end'
local chunk = load(code)
chunk()