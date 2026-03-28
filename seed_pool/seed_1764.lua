function coroutine_stress_test(max_depth)
local function recursive_coroutine(current_depth)
if current_depth < max_depth then
return coroutine.yield(recursive_coroutine(current_depth + 1))
else
return current_depth
end
end
local co = coroutine.create(function()
return recursive_coroutine(1)
end)
assert(coroutine.resume(co))
end