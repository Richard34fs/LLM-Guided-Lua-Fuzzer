function coroutine_yield()
local co = coroutine.create(function()
for i = 1, 100 do
print("Coroutine A: " .. i)
coroutine.yield()
end
end)
for i = 1, 100 do
print("Main Loop: " .. i)
coroutine.resume(co)
end
end