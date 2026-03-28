function coroutine_deep_recursion(n)
local co = coroutine.create(function()
if n > 0 then
coroutine_deep_recursion(n - 1)
end
end)
for i = 1, n do
co = coroutine.resume(co)
end
end