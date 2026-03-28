local t = {}
setmetatable(t, {__gc = function(t)
  -- Finalizer code goes here
  print("Table has been garbage collected")
end})
do
  local key = "1_1"
  t[key] = 1
  if true then
    local key = "2_2"
    t[key] = 2
  end
  do
    local key = "3_3"
    t[key] = 3
  end
  for i = 4, 1000 do
    local key = tostring(i) .. "_" .. i
    t[key] = i
  end
end