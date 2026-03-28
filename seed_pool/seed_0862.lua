function coroutine_stress_test(n)
local function recurse(i)
if i > n then
return 1
else
return recurse(i + 1) + 1
end
end
local co = coroutine.create(function()
return recurse(1)
end)
local status, result = coroutine.resume(co)
assert(status and result == n + 1)
end