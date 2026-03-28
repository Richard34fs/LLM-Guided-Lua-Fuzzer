function coroutineA(x)
print("coroutineA", x)
local y = coroutine.yield()
return y
end
function coroutineB(x)
print("coroutineB", x)
local y = coroutine.yield()
return y
end
local coA = coroutine.create(coroutineA)
local coB = coroutine.create(coroutineB)
coroutine.resume(coA, "a")
coroutine.resume(coB, "b")