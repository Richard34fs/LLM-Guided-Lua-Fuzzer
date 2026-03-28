function churn_memory()
    local table_count = 1000
    for i = 1, table_count do
        local tmp_table = {}
        setmetatable(tmp_table, {__mode = "k"})

        -- Simulate userdata garbage collection
        local userdata = newuserdata(0)
        setmetatable(userdata, {__gc = function()
            -- Finalizer logic goes here
            print("Userdata garbage collected")
        end})
        tmp_table = nil
        collectgarbage()
    end
end