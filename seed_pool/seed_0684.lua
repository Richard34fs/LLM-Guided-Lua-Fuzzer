function coroutine_example()
local co = coroutine.create(function()
local value = 0
for i = 1, 10000 do
value = value + i
coroutine.yield(value)
end
end)
local status, result = coroutine.resume(co)
while status do
print("Coroutine Result:", result)
status, result = coroutine.resume(co)
end
end
coroutine_example()