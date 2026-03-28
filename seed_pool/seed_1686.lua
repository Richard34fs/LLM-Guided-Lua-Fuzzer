function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Before yielding", n)
local value = coroutine.yield(n)
print("After yielding", n, "received", value)
end
return n
end)
return co
end
local co1 = coroutine_recursion(5)
local co2 = coroutine_recursion(4)
coroutine.resume(co1, co2)