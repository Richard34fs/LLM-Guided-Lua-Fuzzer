function deep_recursion(n)
if n > 0 then
local co = coroutine.create(function()
return deep_recursion(n - 1)
end)
local result = coroutine.resume(co)
return result
else
return "Recursion deep enough"
end
end
local result = deep_recursion(10000)
print(result)