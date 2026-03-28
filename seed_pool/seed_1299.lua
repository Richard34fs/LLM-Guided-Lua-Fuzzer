function coroutine_stress(f)
local co = coroutine.create(f)
local function recurse(depth)
if depth > 0 then
recurse(depth - 1)
else
local value = coroutine.yield()
return recurse(value)
end
end
recurse(100000)
end