function coroutine_stress(n)
  local function f(i)
    if i == n then
      return i
    else
      return i + yield(f(i+1))
    end
  end

  local co = coroutine.create(function()
    return f(1)
  end)

  local res, val = pcall(coroutine.resume, co) -- Modified to use pcall instead of coroutine.resume
  if not res then
    error("Error occurred while resuming coroutine: " .. tostring(val))
  end

  assert(res)
  return val
end