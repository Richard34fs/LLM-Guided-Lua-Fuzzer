function coroutine_nesting(n)
local function coroutine_recursive(i)
if i > n then
return
end
local co = coroutine.create(function()
coroutine_recursive(i + 1)
end)
coroutine.yield(co)
end
local co = coroutine.create(function()
coroutine_recursive(1)
end)
return co
end