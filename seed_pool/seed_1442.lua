function coroutine_stress(n)
local function recurse(i)
if i <= n then
return recurse(i + 1)
end
return i
end
local co = coroutine.create(function()
return recurse(1)
end)
local status, value = coroutine.resume(co)
return status and value
end