function coroutine_loop(co)
while true do
local value = coroutine.yield()
coroutine.resume(co, value)
end
end
local co = coroutine.create(function()
for i = 1, 5000 do
print("Coroutine A: " .. i)
coroutine_loop(coroutine.running())
coroutine.yield()
end
end)
coroutine.resume(co)