function coroutine_loop(co)
while true do
local value = coroutine.yield()
print("Received:", value)
end
end
local co = coroutine.create(coroutine_loop)
coroutine.resume(co)
for i = 1, 5 do
coroutine.resume(co, "Value " .. i)
end