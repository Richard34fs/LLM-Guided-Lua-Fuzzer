function manipulate_massive_strings()
  local result = ""
  for i = 1, 100 do
    local pattern = string.rep("x", i)
    local gsub = function(str, pat, rep)
      return str:gsub(pat, rep)
    end
    result = result .. gsub("xxxxxxxxxx", pattern, "")
  end
  return result
end