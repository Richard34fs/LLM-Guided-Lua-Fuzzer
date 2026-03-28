function coroutineA(x)
print("Coroutine A", x)
local y = coroutine.yield()
print("Coroutine A", y)
end
function coroutineB(x)
print("Coroutine B", x)
local y = coroutine.yield()
print("Coroutine B", y)
end
local a = coroutine.create(coroutineA)
local b = coroutine.create(coroutineB)
coroutine.resume(a, "hello")
coroutine.resume(b, "world")