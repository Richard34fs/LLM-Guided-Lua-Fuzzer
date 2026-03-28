local table_insert = table.insert
local ipairs = ipairs
local print = print

function manipulate_string(s)
  local result = ""
  for i = 1, #s do
    local char = s:sub(i, i)
    if char == "a" then
      result = result .. string.rep("b", 500)
    elseif char == "c" then
      result = result .. string.gsub("d", "e", "f")
    else
      result = result .. char
    end
  end

  return result
end
table_insert = function(t, ...)
  if type(t) ~= "table" then
    error("invalid first argument to 'insert' (table expected, got " .. type(t) .. ")")
  end
  table.insert(t, ...)
end

ipairs = function(t)
  if type(t) ~= "table" then
    error("invalid argument type to 'ipairs' (table expected, got " .. type(t) .. ")")
  end
  return ipairs(t)
end

print = function(...)
  local s = ""
  for i = 1, select("#", ...) do
    s = s .. tostring(select(i, ...)) .. "\t"
  end

  print(s)
end