function manipulate_string(str)
  local result = ""
  local pattern = string.rep("a", 100000)

  -- Create a coroutine and store it in a variable
  local coroutine_fn = coroutine.create(function()
    for i = 1, 100 do
      str = string.gsub(str, pattern, "")
      result = result .. str
      -- Yield control back to the caller
      coroutine.yield()
    end
  end)

  -- Resume the coroutine multiple times, passing the str parameter each time
  local status, value = coroutine.resume(coroutine_fn, str)
  while status do
    -- Concatenate the resulting value with result
    result = result .. value
    status, value = coroutine.resume(coroutine_fn, str)
  end

  return result
end