function mix_types(num)
  local t = {}
  for i = 1, num do
    if i % 2 == 0 then
      local function double(n)
        return n * 2
      end
      t[i] = double(i) .. " is even"
    else
      local function add_two_point_five(n)
        return n + 2.5
      end
      t[tostring(i)] = add_two_point_five(i)
    end
  end
  return t
end