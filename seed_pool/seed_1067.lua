function coroutine_stress(n)
local function recurse(i)
if i > 0 then
return recurse(i - 1)
end
end
local co = coroutine.create(function()
recurse(n)
end)
local status, err = coroutine.resume(co)
assert(status, err)
end