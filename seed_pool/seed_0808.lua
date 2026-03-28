function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
local result = coroutine_recursion(n - 1)
print("Coroutine A: Yielding to Coroutine B")
local value = coroutine.yield(result)
print("Coroutine A: Received", value, "from Coroutine B")
else
print("Coroutine A: Reached the base case with n =", n)
end
end)
return co
end