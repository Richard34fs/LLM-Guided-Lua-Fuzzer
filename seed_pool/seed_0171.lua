function coroutine_stress(n)
local function recurse(n)
if n > 0 then
return n + recurse(n - 1)
else
return 0
end
end
local co = coroutine.create(function()
return recurse(n)
end)
local status, result = coroutine.resume(co)
return result
end