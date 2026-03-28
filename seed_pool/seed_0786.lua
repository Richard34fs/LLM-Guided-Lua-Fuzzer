function coroutine_stress(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_stress(depth - 1)
end)
local status, value = coroutine.resume(co)
return value
else
return "Max recursion depth reached"
end
end