local temp_tables = {}
for i = 1, 100 do
    local t = {}
    setmetatable(t, {__mode = "k"})
    temp_tables[t] = true
    t = nil
    collectgarbage()
end

-- Mutated code:
local temp_tables = {}
for i = 1, 100 do
    local a, b, c = {}, {}, {}  -- Create multiple values
    setmetatable(a, {__mode = "k"})
    temp_tables[a] = true
    a = nil  -- Ignore extra values
    collectgarbage()
end