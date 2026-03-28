function coroutine_recursion(n)
if n <= 0 then
return
end
local co = coroutine.create(function()
print("Coroutine " .. n .. " created")
coroutine_recursion(n - 1)
print("Coroutine " .. n .. " yielding")
coroutine.yield()
print("Coroutine " .. n .. " resuming")
end)
coroutine.resume(co)
end
coroutine_recursion(5)