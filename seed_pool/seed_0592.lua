function coroutine_stress_test(n)
local function inner_coroutine(i)
if i > 0 then
return inner_coroutine(i - 1)
else
return i
end
end
local co = coroutine.create(function()
return inner_coroutine(n)
end)
return coroutine.resume(co)
end