function coroutine_stress(n)
local function recurse(n)
if n > 0 then
return recurse(n - 1)
end
return n
end
local co = coroutine.create(function()
return recurse(n)
end)
return coroutine.resume(co)
end