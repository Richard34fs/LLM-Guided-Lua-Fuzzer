function coroutine_stress(n)
  local co = coroutine.create(function()
    if n > 0 then
      return coroutine_stress(n - 1), n, "hello"  -- Modified line
    end
  end)
  return co
end
local co = coroutine_stress(100000)