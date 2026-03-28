function coroutine_stress(n)
local co = coroutine.create(function()
return n * n
end)
local status, result = coroutine.resume(co)
if status then
print("Coroutine stress test completed successfully: ", result)
else
error("Coroutine stress test failed: " .. result)
end
end