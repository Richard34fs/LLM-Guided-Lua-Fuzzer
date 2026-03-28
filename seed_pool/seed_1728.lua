function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Coroutine", n, "starting")
coroutine_recursion(n - 1)
print("Coroutine", n, "ending")
end
end)
return co
end