function coroutine_stress(depth)
  local co = coroutine.create(function()
    if depth > 0 then
      coroutine_stress(depth - 1)
    end
  end)
  local function helper()
    coroutine.resume(co)
  end

  helper()
end

coroutine_stress(5000)