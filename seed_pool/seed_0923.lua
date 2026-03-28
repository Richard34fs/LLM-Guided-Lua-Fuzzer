function coroutine_stress(n)
local function recurse(i)
if i > n then
return
else
recurse(i + 1)
end
end
local co = coroutine.create(function()
recurse(1)
end)
local status, result = coroutine.resume(co)
return status, result
end