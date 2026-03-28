function coroutine_stress(n)
  local co = coroutine.create(function()
    local function stress(i)
      if i > 0 then
        stress(i - 1)
      end
      coroutine.yield()
    end
    stress(n)
  end)

  return co
end