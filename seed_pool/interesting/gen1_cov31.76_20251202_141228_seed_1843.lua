function coroutine_stress(depth)
  local co = coroutine.create(function()
    if depth > 0 then
      coroutine_stress(depth - 1)
    end
  end)
  for i = 1, depth do
    coroutine.resume(co)
  end
end
local chunk = "coroutine_stress(10000)"
load(chunk)()