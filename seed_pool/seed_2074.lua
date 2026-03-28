function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Calling coroutine_recursion with n - 1")
local nested_co = coroutine_recursion(n - 1)
print("Yielding to nested coroutine")
local result = coroutine.yield(nested_co)
print("Nested coroutine returned:", result)
end
return n
end)
return co
end