function coroutine_deep_recursion(num)
local co = coroutine.create(function()
if num <= 0 then
return
end
print("Before yield", num)
coroutine.yield()
print("After yield", num)
coroutine_deep_recursion(num - 1)
end)
coroutine.resume(co)
end