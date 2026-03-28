local t = {}
for i = 1, 1000 do
    if i % 2 == 0 then
        t[i] = "value" .. i
    else
        t["key" .. i] = "value" .. i
    end
end
for j = 1, 1000 do
    t["string_key" .. j] = "value" .. j
end

local mt = {
    __gc = function(self)
        -- Finalizer code goes here
    end
}
setmetatable(t, mt)
collectgarbage()  -- Force garbage collection