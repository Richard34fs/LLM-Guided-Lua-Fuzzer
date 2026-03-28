local function churn_memory()
    local t = {
        a = 1,
        b = 2,
        c = {
            d = 3,
            e = 4,
            f = 5
        }
    }
    setmetatable(t, {__mode = 'kv'})

    while true do
        local temp = {}
        for i = 1, 100000 do
            temp[i] = i
        end

        t[temp] = true
        temp = nil
        collectgarbage()
    end
end