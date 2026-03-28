function coroutine_example(value)
local co = coroutine.create(function()
value = value + 1
value = coroutine.yield(value)
return value
end)
local status, result = coroutine.resume(co, value)
if status then
value = result + 1
value = coroutine.yield(value)
return value
else
error(result)
end
end