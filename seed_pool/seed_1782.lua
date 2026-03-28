function coroutine_test(n)
local function recurse(i)
if i == n then
return i
else
return i + recurse(i+1)
end
end
local co = coroutine.create(function()
return recurse(1)
end)
return coroutine.resume(co)
end