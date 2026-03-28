local result = ""  -- moved up
for i = 1, 100 do
  local pattern = "abcdefghijklmnopqrstuvwxyz"  -- moved inside loop
  result = result .. string.rep(string.gsub(pattern, ".", ""), i)
end
print(result)