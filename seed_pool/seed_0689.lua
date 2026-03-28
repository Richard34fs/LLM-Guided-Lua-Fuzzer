function coroutine_stress(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress(depth - 1)
end
end)
for i = 1, 1000 do
coroutine.resume(co)
end
end