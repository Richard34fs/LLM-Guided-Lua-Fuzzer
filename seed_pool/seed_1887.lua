function coroutine_stress_test(num_coroutines)
local function create_coroutine(n)
return coroutine.create(function()
if n > 0 then
create_coroutine(n - 1)
end
end)
end
for i = 1, num_coroutines do
create_coroutine(10000)
end
end