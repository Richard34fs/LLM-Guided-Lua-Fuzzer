function coroutine_test(n)
if n <= 0 then
return
end
local co = coroutine.create(function()
print("Coroutine " .. n .. " created")
coroutine_test(n - 1)
end)
print("Coroutine " .. n .. " started")
local status, value = coroutine.resume(co)
if not status then
error(value)
end
end
coroutine_test(5)