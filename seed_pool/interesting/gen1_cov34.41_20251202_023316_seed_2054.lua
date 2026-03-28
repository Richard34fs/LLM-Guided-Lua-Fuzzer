local metatable = {
    __index = function(table, key)
        if key == "insert" then
            return function(t, pos, value)
                print("Calling local insert")
                rawset(t, pos, value)
            end
        else
            return rawget(table, key)
        end
    end
}
setmetatable(_G, metatable)
function coroutine_func(value)
    local co = coroutine.create(function()
        while true do
            value = value + 1
            value = coroutine.yield(value)
        end
    end)
    return co
end
local co1 = coroutine_func(0)
local co2 = coroutine_func(100)
for i=1, 5 do
    local value1 = coroutine.resume(co1, value1)
    local value2 = coroutine.resume(co2, value2)
end