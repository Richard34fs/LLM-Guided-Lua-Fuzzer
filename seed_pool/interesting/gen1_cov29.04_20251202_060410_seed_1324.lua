local function churn_memory()
  for i = 1, 100 do
    local temp_table = setmetatable({
      __mode = 'k'
    }, {
      __add = function(a, b)
        return a + b
      end
    })
    temp_table[i] = {}
    temp_table = nil
    collectgarbage()
  end
end
churn_memory()