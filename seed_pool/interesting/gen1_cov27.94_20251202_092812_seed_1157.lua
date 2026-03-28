function coroutine_stress(n)
  local function recursive_coroutine(i)
    if i > n then
      return nil
    end
    return coroutine.yield(recursive_coroutine(i + 1))
  end
  local co = coroutine.create(function()
    return recursive_coroutine(1)
  end)

  setmetatable(co, {
    __call = function(self, ...)
      return self(...) * 2   -- double the result of calling the coroutine
    end
  })

  return co
end