function churn_memory()
    for _ = 1, 100 do
        local tmp = {}
        setmetatable(tmp, {__mode = "k"})
        tmp[1] = {}
        tmp = nil
        collectgarbage()
    end
end

local function closure()
    local x = 1
    return function()
        return x
    end
end

if true then
    if false then
        print("Hello world")  -- nested if statements
    end
end