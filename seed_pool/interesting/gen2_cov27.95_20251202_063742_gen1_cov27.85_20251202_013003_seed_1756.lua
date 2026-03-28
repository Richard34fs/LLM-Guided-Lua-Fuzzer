local function churn_memory()
  local temp_tables = {}
  for i = 1, 1000 do
    local temp_table = { key = "value" }
    setmetatable(temp_table, { __mode = "kv" })
    temp_tables[i] = temp_table
    temp_table.key = nil
    temp_table = nil
    collectgarbage()
  end
  for i = 1, #temp_tables do
    temp_tables[i] = nil
  end
end

local function create_closure()
  local x = 0
  return function()
      x = x + 1
      return x
  end
end

local function increment(x)
  return x + 1, x + 2 -- Mutação: retorna múltiplos valores em contexto onde se espera apenas um valor
end

local anonymous_function = function(x)
  return x + 1
end
local x = 10
local function create_closure()
  local x = 20
  return function()
      x = x + 1
      return x
  end
end