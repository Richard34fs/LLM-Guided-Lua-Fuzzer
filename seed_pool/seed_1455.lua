function coroutine_recursion(n)
local function helper(i)
if i == n then
return i
else
return i + coroutine.yield(helper(i + 1))
end
end
local co = coroutine.create(function()
return helper(1)
end)
return coroutine.resume(co)
end