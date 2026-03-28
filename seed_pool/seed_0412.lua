function coroutine_stress(n)
local function stress(i)
if i > 0 then
stress(i - 1)
end
coroutine.yield()
end
local co = coroutine.create(function()
stress(n)
end)
return co
end