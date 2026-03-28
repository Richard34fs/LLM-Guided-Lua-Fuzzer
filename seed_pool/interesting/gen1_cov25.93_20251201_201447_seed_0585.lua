local function manipulate_string(input)
  local result = ""
  for i = 1, 100 do
    result = result .. string.rep(input, i)
  end
  result = string.gsub(result, "abc", "")
  return result, input -- Mutated code: added 'input' to the returned values
end