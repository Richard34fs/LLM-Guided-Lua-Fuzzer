local function manipulate_strings(n)
  local result = ""
  for i = 1, n do
    result = result .. string.rep("a", i) .. string.rep("b", i)
  end

  return string.gsub(result, "ab", "")
end

local table_insert = table.insert   -- Shadow the global `table.insert` function
local ipairs = ipairs               -- Shadow the global `ipairs` function
local print = print                 -- Shadow the global `print` function

local function manipulate_strings(n)
  local result = ""
  for i = 1, n do
    result = result .. string.rep("a", i) .. string.rep("b", i)
  end

  return string.gsub(result, "ab", "")
end

-- Mutation: Inject an error via `error()`
local status, err = pcall(function()
  manipulate_strings(-1)   -- Invalid input
end)
if not status then
  print("ERROR: " .. err)
end