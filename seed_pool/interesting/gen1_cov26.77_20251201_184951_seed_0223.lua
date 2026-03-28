function churn_memory()
  local t = {}
  setmetatable(t, {__mode = "kv"})
  while true do
    local a = {}
    t[a] = true
    a = nil
    collectgarbage()
  end
end
local table_insert = table.insert
local ipairs = ipairs
local print = print
function churn_memory()
  local t = {}
  setmetatable(t, {__mode = "kv"})
  while true do
    local a = {}
    t[a] = true
    a = nil
    collectgarbage()
  end
end