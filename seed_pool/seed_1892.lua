function coroutine_recursion(n)
local function recurse(i)
if i >= n then
return i
else
return i + coroutine.yield(recurse(i + 1))
end
end
local co = coroutine.create(function()
return recurse(1)
end)
local status, result = coroutine.resume(co)
assert(status, result)
return result
end