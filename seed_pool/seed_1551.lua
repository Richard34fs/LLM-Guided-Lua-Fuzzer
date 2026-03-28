function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Before yield", n)
coroutine_recursion(n - 1)
coroutine.yield()
print("After yield", n)
end
end)
return co
end
local coroutines = {}
for i = 1, 5 do
table.insert(coroutines, coroutine_recursion(i))
end