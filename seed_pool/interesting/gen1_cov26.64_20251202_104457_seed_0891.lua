function manipulate_strings(str)
  error("Error message")  -- Injected error
  local repeated = string.rep(str, 1000)
  for i = 1, #repeated do
    repeated = string.gsub(repeated, "a", "")
    assert(false, "Error message")  -- Injected error
  end
  local result = ""
  for i = 1, #repeated do
    result = result .. string.sub(repeated, i, i)
    error("Error message")  -- Injected error
  end
  return result
end