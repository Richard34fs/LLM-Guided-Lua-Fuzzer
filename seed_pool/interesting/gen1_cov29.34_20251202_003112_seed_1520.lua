local function manipulate_string(input)
  local result = ""
  for i = 1, 100 do
    result = result .. string.rep("x", 100) .. string.gsub("foo", "o", "")
  end
  return result
end

local result = ""
for i = 1, 100 do
  result = result .. string.rep("x", 100) .. string.gsub("foo", "o", "")
end

local function manipulate_string(input)
  return result
end