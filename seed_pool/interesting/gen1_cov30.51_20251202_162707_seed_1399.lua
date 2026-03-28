local t = {} -- Table with metatable
setmetatable(t, {__tostring = function() return "Metatable" end})
t["123"] = 10
t[1] = "abc"
for k, v in pairs(t) do
    if type(k) == "number" then
        print(k * 2)
    else
        print(#k)
    end
end