function manipulate_massive_strings()
local result = ""
for i = 1, 100 do
local pattern = string.rep("x", i)
result = result .. string.gsub("xxxxxxxxxx", pattern, "")
end
return result
end