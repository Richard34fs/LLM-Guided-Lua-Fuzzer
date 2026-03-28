function coroutine_stress_test(n)
local function coroutine_recursion(i)
if i < n then
return coroutine.create(function()
return coroutine_recursion(i + 1)
end)
else
return i
end
end
local co = coroutine.create(function()
return coroutine_recursion(1)
end)
return coroutine.resume(co)
end