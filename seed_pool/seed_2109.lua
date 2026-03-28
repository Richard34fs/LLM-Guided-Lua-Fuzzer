function coroutine_recursion(n)
local function helper(n, value)
if n <= 0 then
return value
end
local co = coroutine.create(function()
return helper(n - 1, value + 1)
end)
return coroutine.yield(co)
end
return helper(n, 0)
end