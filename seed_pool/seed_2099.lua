function coroutine_stress_test(num_coroutines)
local function coroutine_func()
local function recursive_func(depth)
if depth > 0 then
return recursive_func(depth - 1)
end
end
recursive_func(10000)
end
for i = 1, num_coroutines do
coroutine.create(coroutine_func)
end
end