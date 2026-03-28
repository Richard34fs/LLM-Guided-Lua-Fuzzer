function coroutine_func(val)
local function inner_coroutine()
return val + 10
end
local co = coroutine.create(inner_coroutine)
local status, result = coroutine.resume(co)
if status then
return result
else
error(result)
end
end