function coroutine_stress(max_depth)
local function create_coroutine(current_depth)
return coroutine.create(function()
if current_depth < max_depth then
create_coroutine(current_depth + 1)
end
end)
end
create_coroutine(0)
end