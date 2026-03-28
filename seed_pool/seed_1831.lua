function coroutine_stress(level)
local co = coroutine.create(function()
if level > 0 then
coroutine_stress(level - 1)
end
end)
return co
end
local stress_level = 50000
for i = 1, stress_level do
local co = coroutine_stress(i)
coroutine.resume(co)
end