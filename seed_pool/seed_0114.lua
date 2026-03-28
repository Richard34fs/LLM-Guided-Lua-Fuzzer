function coroutine_stress(n)
local function recurse(n)
if n > 0 then
return recurse(n - 1)
end
end
local co = coroutine.create(function()
recurse(n)
end)
local status, err = coroutine.resume(co)
if not status then
error(err)
end
end