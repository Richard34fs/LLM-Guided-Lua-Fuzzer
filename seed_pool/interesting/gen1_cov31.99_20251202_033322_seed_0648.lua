local t = {}
local function value(i)
    return "value" .. i
end
for i = 1, 1000 do
    local key = "key" .. i
    t[i] = value(i)
    t[key] = i
    local closure = function()
        print(key, t[key])
    end
    closure()
end
for k, v in pairs(t) do
    print(k, v)
end