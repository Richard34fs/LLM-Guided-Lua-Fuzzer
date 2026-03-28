function coroutine_stress(n)
local function helper(i)
if i > n then
return
end
coroutine.yield()
helper(i + 1)
end
local co = coroutine.create(function()
helper(1)
end)
while true do
local status, value = coroutine.resume(co)
end
end