local function churn_memory()
  for _ = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'k'})
    temp_table = nil
    collectgarbage()
  end
end

local status, err = pcall(churn_memory)
if not status then
  print("Error occurred: ", err)
else
  print("No errors")
end