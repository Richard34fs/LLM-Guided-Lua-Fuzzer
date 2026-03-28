function coroutine_recursion(n)
local function inner(i)
if i > n then
return i
else
return i + coroutine.yield(inner(i + 1))
end
end
local co = coroutine.create(function()
return inner(1)
end)
return coroutine.resume(co)
end