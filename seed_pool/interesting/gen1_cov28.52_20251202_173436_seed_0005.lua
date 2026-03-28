local t = {}
do
  for i = 1, 1000 do
    local key = tostring(i) .. "a"
    t[key] = i
  end
end