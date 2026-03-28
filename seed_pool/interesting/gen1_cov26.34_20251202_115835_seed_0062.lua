local function churn_memory()
  for _ = 1, 1000 do
    local temp_table = {
      ["a"] = 1,
      ["b"] = 2,
      ["c"] = 3,
      ["d"] = 4,
      ["e"] = 5,
      ["f"] = 6,
      ["g"] = 7,
      ["h"] = 8,
      ["i"] = 9,
      ["j"] = 10
    }
    setmetatable(temp_table, {__mode = "k"})
    temp_table[{}] = true
    collectgarbage()
  end
end