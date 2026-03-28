function deepRecursion(n)
if n > 0 then
coroutine.yield(deepRecursion(n - 1))
end
end
local co = coroutine.create(function()
return deepRecursion(10000)
end)
while true do
local status, value = coroutine.resume(co)
if not value then
break
end
end