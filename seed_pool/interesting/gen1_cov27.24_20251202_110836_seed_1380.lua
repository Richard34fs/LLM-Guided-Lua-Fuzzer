local function churnMemory()
    local tempTable = { __metatable = {} }
    for i = 1, 10000 do
        local obj = setmetatable({ id = i }, {
            __tostring = function(self)
                return "Object " .. self.id
            end
        })
        tempTable[obj] = true
        obj = nil
        collectgarbage()
    end
end