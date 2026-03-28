function coroutine_stress(n)
local function recursive_coroutine(i)
if i > n then
return
end
local co = coroutine.create(function()
recursive_coroutine(i + 1)
end)
local status, value = coroutine.resume(co)
end
recursive_coroutine(1)
end