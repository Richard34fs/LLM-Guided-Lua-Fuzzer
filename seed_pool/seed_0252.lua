function coroutine_stress(n)
local function recurse(n)
if n <= 0 then
return
end
local co = coroutine.create(function()
recurse(n - 1)
end)
local status, value = coroutine.resume(co)
print(value)
end
recurse(n)
end