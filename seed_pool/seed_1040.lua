function coroutine_stress(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress(depth - 1)
end
end)
for _ in pairs(co) do
print("Yielding from the top-level coroutine...")
local value = coroutine.yield()
print("Resumed with value:", value)
end
end