function coroutine_stress(n)
local co = coroutine.create(function()
if n > 0 then
coroutine_stress(n - 1)
end
end)
return co
end
local co = coroutine_stress(100000)