do
  local t = {}
  for i = 1, 1000 do
    local key = tostring(i) .. "a"
    t[key] = i
  end

  function coroutine_func(param1, param2)
    local result3 = param1 * param2
    local result1 = param1 + param2
    local result2 = param1 - param2

    return result1, result2
  end
end