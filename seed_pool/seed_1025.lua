function coroutine_stress(n)
local function f(i)
if i == n then
return i
else
return i + coroutine.yield(f(i+1))
end
end
local co = coroutine.create(function()
return f(1)
end)
return coroutine.resume(co)
end