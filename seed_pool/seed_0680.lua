function coroutine_recursion(n)
local function create_coroutine(i)
if i > n then
return
end
local co = coroutine.create(function()
create_coroutine(i + 1)
end)
coroutine.resume(co)
end
create_coroutine(1)
end
coroutine_recursion(10000)