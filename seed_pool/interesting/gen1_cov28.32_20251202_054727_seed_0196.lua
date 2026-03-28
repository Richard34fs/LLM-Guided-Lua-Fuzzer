function manipulate_string(str)
  local new_str = ""
  do
    for i = 1, #str do
      if i % 2 == 0 then
        new_str = new_str .. string.rep(str:sub(i, i), 3)
      else
        new_str = new_str .. str:sub(i, i)
      end
    end
  end
  return new_str
end