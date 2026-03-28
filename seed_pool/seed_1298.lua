function coroutine_recursion(n)
local function recurse(i)
if i > n then
return i
else
return recurse(i + 1)
end
end
local co = coroutine.create(function()
return recurse(1)
end)
return co
end