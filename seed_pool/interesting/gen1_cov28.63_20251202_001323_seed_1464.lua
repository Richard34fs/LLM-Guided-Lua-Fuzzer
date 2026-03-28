function coroutine_recursion(n)
    local function helper(i)
        if i <= n then
            return i + coroutine.yield(helper(i + 1))
        end
    end
    local co = coroutine.create(function()
        return helper(1)
    end)
    local status, result = coroutine.resume(co)
    assert(status, result)
    return result
end
local a = 10
local b = 20
local c = 30
a, b, c = 40, 50, 60
local d = 70
d = 80
if true then
    local e = 90
    local f = 100
    local g = 110
end
for i = 1, 10 do
    local h = 120
end