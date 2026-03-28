function coroutine_test(x)
local co = coroutine.create(function()
local y = x + 2
y = coroutine.yield(y)
return y
end)
local status, res = coroutine.resume(co)
if not status then
error(res)
end
print("First yield result:", res)
coroutine.resume(co, "test")
end