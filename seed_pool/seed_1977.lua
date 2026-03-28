local str = string.rep("x", 1e6)
for i = 1, 10 do
str = string.gsub(str, "x", "")
end
print(#str)