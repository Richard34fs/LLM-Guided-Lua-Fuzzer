for _ = 1, 100 do
local temp_table = setmetatable({}, {__mode = 'k'})
temp_table[1] = {}
temp_table = nil
collectgarbage()
end