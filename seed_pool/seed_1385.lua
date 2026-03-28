function coroutine_recursion(n)
local function f(i)
if i > 0 then
return i + yield(f(i - 1))
else
return 0
end
end
local co = coroutine.create(function()
return f(n)
end)
return coroutine.resume(co)
end