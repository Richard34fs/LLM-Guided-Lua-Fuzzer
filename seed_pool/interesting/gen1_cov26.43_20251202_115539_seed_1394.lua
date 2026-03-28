local function create_metatable(value)
    local metatable = {
        __index = value,
        __newindex = function() end,
        __add = function(a, b) return a end,
        __call = function(self, ...)
            if self ~= metatable then
                return create_metatable(self)
            end
        end,
    }
    setmetatable(value, metatable)
    return value
end
local function outer()
    do
        local inner1 = function()
            local inner2 = function()
                if true then
                    local inner3 = function()
                        return create_metatable({})
                    end
                    return inner3
                else
                    return create_metatable({})
                end
            end
            return inner2
        end
        return inner1
    end
end