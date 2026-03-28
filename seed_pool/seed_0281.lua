function coroutine_stress(n)
local function f(i)
if i == n then
return i
else
return i + yield(f(i+1))
end
end
local co = coroutine.create(function()
return f(1)
end)
local res, val = coroutine.resume(co)
assert(res)
return val
end