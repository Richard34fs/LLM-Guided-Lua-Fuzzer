function coroutine_recursion(n)
local a, b, c = 1, 2, 3
if n > 0 then
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, value = coroutine.resume(co)
return value
else
return n
end
local d, e, f = 4, 5, 6
a = b + c
d = e + f
return a + d
end