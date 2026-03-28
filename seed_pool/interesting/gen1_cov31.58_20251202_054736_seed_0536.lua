local function create_churner()
    local table_count = 0
    return function(size)
        local t = {}
        setmetatable(t, {__mode = 'k'})
        for i = 1, size do
            t[i] = {}
        end
        table_count = table_count + 1
        if table_count > 100 then
            collectgarbage()
            table_count = 0
        end
    end
end
local chunk_string = [[
    local function create_churner()
    local table_count = 0
    return function(size)
    local t = {}
    setmetatable(t, {__mode = 'k'})
    for i = 1, size do
    t[i] = {}
    end
    table_count = table_count + 1
    if table_count > 100 then
    collectgarbage()
    table_count = 0
    end
    end
    end
]]
load(chunk_string)()
local churner = create_churner()
churner(10)