function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Recursion level:", n)
coroutine_recursion(n - 1)
else
print("Base case reached")
end
end)
return co
end