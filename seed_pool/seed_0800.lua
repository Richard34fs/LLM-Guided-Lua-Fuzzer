function coroutine_func(input)
local co = coroutine.create(function()
return input + 1
end)
local status, result = coroutine.resume(co)
if status then
return result
else
error("Coroutine failed: " .. result)
end
end