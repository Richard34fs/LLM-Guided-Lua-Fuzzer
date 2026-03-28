local function recurse(depth)
  if depth > 0 then
    return recurse(depth - 1)
  end
  return n
end
function coroutine_stress_test(n)
  local co = coroutine.create(function()
    return recurse(depth)
  end)
  local status, result = coroutine.resume(co)
  return result
end
local function recurse(depth)
  if depth > 0 then
    return recurse(depth - 1)
  end
  return n
end
local co = coroutine.create(function()
  return recurse(depth)
end)
local status, result = coroutine.resume(co)
return result