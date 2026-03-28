function coroutine_test(n)
local co = coroutine.create(function()
local x = 0
for i = 1, n do
x = x + i
coroutine.yield(x)
end
end)
local status, value = coroutine.resume(co)
while status and value do
print(value)
status, value = coroutine.resume(co)
end
end
coroutine_test(10)