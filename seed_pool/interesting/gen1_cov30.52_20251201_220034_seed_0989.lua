local t = {}
for i = 1, 1000 do
    local key = (i % 2 == 0) and tostring(i) or i
    t[key] = value
end
t.metatable = {
    __index = function() end,
    __newindex = function() end
}
setmetatable(t, t.metatable)
local deep_table = {
    a = {
        b = {
            c = {
                d = t
            }
        }
    }
}