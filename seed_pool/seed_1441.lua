function coroutine_stress_test(n)
local function stress_test_helper(i)
if i > n then
return i
else
return stress_test_helper(i + 1)
end
end
local co = coroutine.create(function()
return stress_test_helper(1)
end)
return coroutine.resume(co)
end