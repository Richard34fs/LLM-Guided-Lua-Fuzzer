function coroutine_stress_test(max_depth)
local function recurse(current_depth)
if current_depth < max_depth then
return recurse(current_depth + 1)
else
return current_depth
end
end
local co = coroutine.create(function()
return recurse(1)
end)
return coroutine.resume(co)
end