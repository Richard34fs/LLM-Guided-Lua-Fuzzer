local t = {}
t.__index = function(t, k)
    if k == "hello" then
        return "\n\\"
    end
    return rawget(t, k)
end
setmetatable(t, t)
print(t.hello)