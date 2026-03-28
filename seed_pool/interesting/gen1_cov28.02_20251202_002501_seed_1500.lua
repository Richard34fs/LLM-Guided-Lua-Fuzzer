local function manipulate_string(str)
  local count = 0
  for i = 1, #str do
    if str:sub(i, i) == "a" then
      count = count & 1   -- Replace "+" with "&" (bitwise AND operator)
    end
  end
  local new_str = ""
  for i = 1, count do
    new_str = new_str .. string.rep("b", i)
  end
  return new_str
end