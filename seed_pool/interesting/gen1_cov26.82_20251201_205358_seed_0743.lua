local function generate_massive_strings(count)
  local result = {}
  for i = 1, count do
    local pattern = string.rep("?", i)
    local replaced = string.gsub("??????", pattern, "")
    result[i] = replaced .. string.rep("!", i)
  end
  return table.concat(result, "\n")
end

local a, b, c = 1, 2, 3
a = 4
b = 5
c = 6