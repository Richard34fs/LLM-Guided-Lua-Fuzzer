function coroutine_stress_test(n)
local function recursive_coroutine(n)
if n > 0 then
coroutine.yield(recursive_coroutine(n - 1))
end
end
local main_coroutine = coroutine.create(function()
recursive_coroutine(n)
end)
assert(coroutine.resume(main_coroutine))
end