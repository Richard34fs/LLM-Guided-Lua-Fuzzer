function coroutine_stress(n)
if n > 0 then
local co = coroutine.create(
function()
coroutine_stress(n - 1)
end
)
local status, value = coroutine.resume(co)
print(value)
else
return "Stressing the stack..."
end
end
coroutine_stress(10000)