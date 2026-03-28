function coroutine_recursion(n)
local function create_coroutine(i)
return coroutine.create(function()
if i < n then
create_coroutine(i + 1)
end
end)
end
local main_coroutine = coroutine.create(function()
create_coroutine(1)
end)
assert(coroutine.resume(main_coroutine))
end