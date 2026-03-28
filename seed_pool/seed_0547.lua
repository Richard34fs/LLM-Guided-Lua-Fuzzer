function coroutine_stress(max_depth)
local function recurse(depth)
if depth > max_depth then
return
end
local co = coroutine.create(function()
recurse(depth + 1)
end)
local status, value = coroutine.resume(co)
end
recurse(0)
end