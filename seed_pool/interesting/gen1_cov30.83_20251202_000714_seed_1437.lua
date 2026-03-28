function manipulate_strings(n)
  local result = ""
  for i = 1, n do
    local pattern = string.rep("a", i) .. "b"
    result = result .. string.gsub("ababab", pattern, "")
  end
  return result
end

local function manipulate_strings_with_closure(n)
  return manipulate_strings(n)
end

if true then
  local function manipulate_strings_with_local_function(n)
    return manipulate_strings(n)
  end
  print(manipulate_strings_with_local_function(10))
end