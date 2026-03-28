function coroutine_func(value)
local function inner_coroutine()
value = coroutine.yield(value)
return value
end
local co = coroutine.create(inner_coroutine)
while true do
value = coroutine.resume(co, value)
if not value then
break
end
end
return value
end