function coroutine_stress_test(n)
local function recursive_coroutine(n)
if n > 0 then
print("Coroutine", coroutine.running(), "is stressed with level", n)
coroutine.yield(recursive_coroutine(n - 1))
else
print("Coroutine", coroutine.running(), "has reached the base case")
end
end
local main_coroutine = coroutine.create(function()
recursive_coroutine(n)
end)
coroutine.resume(main_coroutine)
end