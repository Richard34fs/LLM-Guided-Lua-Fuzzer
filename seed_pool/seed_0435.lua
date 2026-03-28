function coroutine_recursion(n)
local function recurse(i)
if i > n then
return
else
print("Recursion level:", i)
recurse(i + 1)
end
end
local co = coroutine.create(function()
recurse(1)
end)
coroutine.resume(co)
end