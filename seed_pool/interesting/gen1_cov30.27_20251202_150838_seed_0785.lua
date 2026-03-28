function create_table()
  local t = {}
  setmetatable(t, { __mode = 'k' })
  return t
end

for i = 1, 1000 do
  local temp_table = create_table()
  for j = 1, 1000 do
    temp_table[j] = {}
  end
  temp_table = nil
  collectgarbage()
end