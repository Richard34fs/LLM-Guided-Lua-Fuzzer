function coroutine_test(n)
local function f(n)
if n <= 0 then
return
end
coroutine.yield()
f(n - 1)
end
local co = coroutine.create(f)
local status, err = coroutine.resume(co, n)
if not status then
error(err)
end
end
coroutine_test(10000)