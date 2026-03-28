function coroutine_stress(n)
if n == 0 then
return 0
else
local co = coroutine.create(function()
return coroutine_stress(n - 1)
end)
local status, result = coroutine.resume(co)
if status and result ~= nil then
return result
else
return 0
end
end
end