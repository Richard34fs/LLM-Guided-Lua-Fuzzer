local t = {}
for i = 1, 1000 do
    local key = tostring(i)
    local value = i * 2
    local function func()
        return key .. ":" .. value
    end
    t[func()] = value
end
print("Table size:", #t)
local mt = {__gc = function() print("GC called") end}
setmetatable(t, mt)
collectgarbage()