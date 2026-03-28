function coroutine_stress(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress(depth - 1)
end
end)
for i = 1, depth do
co = coroutine.create(function()
coroutine.yield()
end)
end
return co
end