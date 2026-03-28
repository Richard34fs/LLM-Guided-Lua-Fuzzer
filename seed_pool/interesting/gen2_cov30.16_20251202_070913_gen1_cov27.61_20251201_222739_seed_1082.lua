local function churnMemory()
    local i = 1
    while i <= 10000 do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "kv"})
        table.insert(tempTable, 1, i)
        table.insert(tempTable, 2, i * 2)
        tempTable = nil
        collectgarbage()
        i = i + 1
    end
end

local function main()
    churnMemory()
    local print = print
    print("Hello World!")
end

main()