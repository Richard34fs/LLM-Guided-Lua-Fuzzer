function coroutine_stress(n)
local function inner(i)
if i < n then
return inner(i + 1)
else
return i
end
end
local co = coroutine.create(function()
return inner(1)
end)
return co
end