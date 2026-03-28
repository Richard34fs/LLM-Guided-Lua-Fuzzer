local function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode  = 'kv'})
    for i = 1, 1000 do
        local object = {data  = i}
        temp_table[object] = true
        object = nil
        collectgarbage()
    end
end
local function wrap_function_in_do_end()
    return
end
do
    local function churn_memory()
        local temp_table = {}
        setmetatable(temp_table, {__mode  = 'kv'})
        for i = 1, 1000 do
            local object = {data  = i}
            temp_table[object] = true
            object = nil
            collectgarbage()
        end
    end
end
local function wrap_function_in_closure()
    return
end
(function ()
    local function churn_memory()
        local temp_table = {}
        setmetatable(temp_table, {__mode  = 'kv'})
        for i = 1, 1000 do
            local object = {data  = i}
            temp_table[object] = true
            object = nil
            collectgarbage()
        end
    end
end)()
local function wrap_function_in_nested_if()
    return
end
if true then
    if true then
        local function churn_memory()
            local temp_table = {}
            setmetatable(temp_table, {__mode  = 'kv'})
            for i = 1, 1000 do
                local object = {data  = i}
                temp_table[object] = true
                object = nil
                collectgarbage()
            end
        end
    end
end