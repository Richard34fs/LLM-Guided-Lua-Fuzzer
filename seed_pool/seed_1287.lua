function coroutine_func(input)
local co = coroutine.create(function()
return input + 10
end)
local status, result = coroutine.resume(co)
if status then
print("Coroutine returned: ", result)
else
error("Coroutine error: " .. result)
end
end