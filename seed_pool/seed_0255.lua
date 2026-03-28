function coroutine_yield(value)
local co = coroutine.create(function()
print("Coroutine A: " .. value)
value = coroutine.yield(value + 1)
print("Coroutine A: " .. value)
end)
local ok, result = coroutine.resume(co, 0)
if not ok then
error(result)
end
return result
end