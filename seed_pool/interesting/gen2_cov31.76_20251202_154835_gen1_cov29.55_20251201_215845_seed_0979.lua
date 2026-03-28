local t = {}
for i=1,1000 do
    local key = "key" .. i
    t[key] = i
    if i % 10 == 0 then
        t[i] = i
    end
end

t["key123"] = 456   -- Inserted by mutator
t[456] = 789        -- Inserted by mutator

local mt = { __gc = function(self) print("Table was garbage collected") end }
setmetatable(t, mt)