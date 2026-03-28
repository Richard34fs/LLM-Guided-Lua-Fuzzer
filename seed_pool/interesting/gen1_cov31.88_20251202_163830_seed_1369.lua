local t = {}
for i=1,10 do
    t[i] = i
end
setmetatable(t, {
    __index = function(table, key)
        if type(key) == "number" then
            return table[key]
        else
            return nil
        end
    end,
    __newindex = function(table, key, value)
        if type(key) == "number" then
            rawset(table, key, value)
        end
    end
})
local s = ""
for k,v in pairs(t) do
    s = s .. tostring(v)
end
local n = 0
for i=1,100 do
    n = n + #s
end
print(n)