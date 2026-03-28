function deepRecursion(n)
if n <= 0 then
return 1
end
local co = coroutine.create(function()
return deepRecursion(n - 1)
end)
local status, result = coroutine.resume(co)
assert(status, result)
return result
end