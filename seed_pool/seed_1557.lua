function coroutine_stress_test(num_coroutines)
local function create_coroutine(n)
if n > 0 then
coroutine.create(function()
create_coroutine(n - 1)
end)
end
end
for i = 1, num_coroutines do
create_coroutine(i)
end
end