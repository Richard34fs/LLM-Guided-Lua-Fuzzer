local function churn_memory()
  for _ = 1, 100 do
    local tmp_table = {}
    setmetatable(tmp_table, {__mode = 'k'})
    tmp_table = nil
    collectgarbage()
  end
end
local code = "for i = 1, 10 do print(i) end"
local func = load(code)
func()  -- Execute the loaded chunk of code