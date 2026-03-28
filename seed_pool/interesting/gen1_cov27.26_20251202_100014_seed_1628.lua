function generate_code(str)
  local meta_table = {
    __index = function(s, i)
      return s:sub(i, i) .. s:sub(i, i)
    end
  }

  setmetatable(str, meta_table)

  local result = ""
  local count  = #str
  for i = 1, count do
    result = result .. str:sub(i, i)
  end

  result = string.gsub(result, "[^a-zA-Z0-9]", " ")
  return result
end