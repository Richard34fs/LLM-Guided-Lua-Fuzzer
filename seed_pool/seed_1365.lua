function coroutine_stress_test(max_depth)
local function recurse(current_depth)
if current_depth < max_depth then
return coroutine.create(function()
return recurse(current_depth + 1)
end)
else
return current_depth
end
end
local co = recurse(1)
while coroutine.status(co) ~= "dead" do
co = coroutine.resume(co)
end
end