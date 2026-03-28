function coroutine_stress_test(n)
local function recurse(i)
if i < n then
return recurse(i + 1)
end
return i
end
local co = coroutine.create(function()
return recurse(1)
end)
return coroutine.resume(co)
end