function coroutine_func(a, b)
local co = coroutine.create(function()
while true do
a = coroutine.yield(b)
end
end)
for i = 1, 100000 do
b = i * 2
a = coroutine.resume(co, a, b)
end
end