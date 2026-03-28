function coroutine_stress_test(n)
local function deep_recursion(i)
if i > n then
return i
else
return deep_recursion(deep_recursion(i + 1))
end
end
local co = coroutine.create(function()
return deep_recursion(1)
end)
local status, result = coroutine.resume(co)
return status and result
end