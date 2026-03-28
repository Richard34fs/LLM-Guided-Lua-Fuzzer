function coroutine_stress(level)
  local co = coroutine.create(function()
    if level > 0 then
      coroutine_stress(level - 1)
    end
  end)

  pcall(coroutine.resume, co) -- Capture errors using pcall

  return "Stressing the stack at level: " .. level
end