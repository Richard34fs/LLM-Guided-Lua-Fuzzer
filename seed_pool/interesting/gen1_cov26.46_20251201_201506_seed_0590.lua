local function churn_memory()
    local temp_tables = {}    -- Added space before comment
    for i  =  1, 100 do
        local temp_table  ={}
        setmetatable(temp_table,{__mode='k'})
        temp_tables[temp_table] = true
        temp_table=nil
        collectgarbage()
    end
end