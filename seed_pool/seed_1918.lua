function coroutine_test(n)
local co = coroutine.create(function()
local sum = 0
for i = 1, n do
sum = sum + i
coroutine.yield(sum)
end
end)
local status, value = coroutine.resume(co)
while status do
print(value)
status, value = coroutine.resume(co)
end
end
coroutine_test(10)