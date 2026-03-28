function mix_types(num)
  local t = {}
  for i = 1, num do
    if i % 2 == 0 then
      t[i] = tostring(i * 2) .. " is even"
    else
      t[tostring(i)] = i + 2.5
    end
  end
  return t
end