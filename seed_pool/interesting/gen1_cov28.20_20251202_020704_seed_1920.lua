local function churn_memory()
  for i = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = "kv"})
    temp_table.key = temp_table
    temp_table = nil
    collectgarbage()
  end
end

local function override_standard_library()
  package.loaded["table.insert"] = table.insert
  package.loaded["ipairs"] = ipairs
  package.loaded["print"] = print
end

override_standard_library()
churn_memory()