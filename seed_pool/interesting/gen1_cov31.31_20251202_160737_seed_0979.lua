local t = {}
for i=1,1000 do
    local key = "key" .. i
    t[key] = i
    if i % 10 == 0 then
        t[i] = i
    end
end

local metatable = {
    __gc = function(self)
        -- Perform cleanup tasks or resource releases here
    end
}
setmetatable(t, metatable)