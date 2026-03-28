function coroutine_stress(n)
local co = coroutine.create(function()
return n * n
end)
local status, result = coroutine.resume(co)
if status then
print("Result: " .. result)
else
print("Error: " .. result)
end
end