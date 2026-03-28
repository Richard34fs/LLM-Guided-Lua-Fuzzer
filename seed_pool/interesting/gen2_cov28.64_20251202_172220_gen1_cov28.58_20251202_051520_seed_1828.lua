function mixTypes(n)
  local t = {}
  local i = 1
  do
    while i  <= n do
      if type(t[i]) == "number" then
        t[i] = tostring(i) .. i
      else
        t[i] = i + 0.5
      end
      i = i + 1
    end
  end
  return t
end