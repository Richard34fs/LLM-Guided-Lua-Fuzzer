function coroutine_loop(n)
local co = coroutine.create(function()
local value = 0
for i=1, n do
value = value + i
value = coroutine.yield(value)
end
end)
local status, result = coroutine.resume(co)
while status and result do
status, result = coroutine.resume(co, result)
end
end