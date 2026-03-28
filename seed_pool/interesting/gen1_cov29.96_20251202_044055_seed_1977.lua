local str = string.rep("x", 1e6)
local i = 1
while i <= 10 do
  str = string.gsub(str, "x", "")
  i = i + 1
end
print(#str)