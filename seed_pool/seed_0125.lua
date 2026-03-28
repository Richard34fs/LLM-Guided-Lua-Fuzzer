function coroutine_recursion(max_depth)
local function helper(current_depth)
if current_depth >= max_depth then
return
end
local co = coroutine.create(function()
helper(current_depth + 1)
end)
coroutine.resume(co)
end
helper(0)
end