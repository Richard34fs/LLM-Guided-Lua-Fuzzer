local function churn_memory()
  for i = 1, 100 do
    local tmp_table = {}
    setmetatable(tmp_table, {__mode = "k"})
    tmp_table[i] = i
    tmp_table[i] = nil
    collectgarbage()
  end
end
local a, b, c = churn_memory()  -- Mutação: MULTI_RET_IN_SINGLE_EXPR
print(a, b, c)