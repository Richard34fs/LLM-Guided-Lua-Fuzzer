local function manipulate_string(s)
  local result = ""
  for i = 1, 100 do
    result = result .. string.rep(s, i) .. "\n"
  end
  return string.gsub(result, "(*)", "")
end
local a, b, c = 1, 2, 3
d = 4
e = 5
f = 6
g = 7
h = 8
i = 9
j = 10