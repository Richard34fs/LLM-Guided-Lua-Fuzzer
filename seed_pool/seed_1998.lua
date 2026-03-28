function manipulate_massive_strings()
local result = ""
for i = 1, 100 do
result = result .. string.rep("x", 1000) .. string.gsub(string.rep("y", 2000), "yy", "")
end
return result
end