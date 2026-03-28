function coroutine_func(input)
local co = coroutine.create(function()
return input * 2
end)
local status, result = coroutine.resume(co)
if status then
return result
else
error(result)
end
end
local result = coroutine_func(10)
print("Result:", result)