function memoryChurn()
    local tempTable = {}
    setmetatable(tempTable, {__mode = "k"})

    while true do
        for i = 1, 100000 do
            tempTable[i] = {}
        end
        collectgarbage()

        pcall(function()
            error("deliberate error")
        end)

        pcall(function()
            assert(false, "deliberate assertion failure")
        end)

        pcall(function()
            tempTable[100001] = "out of bounds indexing"
        end)
    end
end

function generateChunk()
    local code = [[
        local x = 42
        print("Hello world!")
        if x > 0 then
            print("x is positive")
        else
            print("x is negative")
        end
    ]]

    return code
end

for i = 1, 10 do -- generate and load 10 chunks dynamically
    local chunk = load(generateChunk())
    chunk()
end