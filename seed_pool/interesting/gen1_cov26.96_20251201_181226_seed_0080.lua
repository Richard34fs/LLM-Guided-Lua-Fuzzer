local function create_churner(count)
  local table_list = {}
  for i = 1, count do
    local churn_table = { __mode = "k" }
    for j = 1, 1000 do
      churn_table[j] = { key = j, value = j * 2 }
    end
    table_list[i] = churn_table
  end
  collectgarbage()
  return table_list
end