function coroutine_stress_test(depth)
local function recursive_coroutine(depth)
if depth > 0 then
return coroutine.create(function()
return recursive_coroutine(depth - 1)
end)
else
return 1
end
end
local co = recursive_coroutine(depth)
while coroutine.status(co) ~= "dead" do
co = coroutine.resume(co)
end
end