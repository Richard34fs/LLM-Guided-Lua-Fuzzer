function coroutine_func(value)
local co = coroutine.create(function()
while true do
value = value + 1
value = coroutine.yield(value)
end
end)
return co
end
local main_co = coroutine.running()
local co1 = coroutine_func(10)
local co2 = coroutine_func(20)
coroutine.resume(co1)
coroutine.resume(co2)