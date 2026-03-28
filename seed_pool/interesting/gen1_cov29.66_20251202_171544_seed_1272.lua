local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode  = "k"})

    for i = 1, 10000 do
        local obj = {id  = i}
        tempTable[obj] = true
        obj = nil

        collectgarbage()
    end
end

local stringToLoad = "return function(chunk) return chunk end"
local evaluatedFunction = load(stringToLoad)
local loadedChunk = evaluatedFunction("Hello, world!")
print(loadedChunk)

churnMemory()