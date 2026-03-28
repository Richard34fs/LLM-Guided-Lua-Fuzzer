function manipulate_string(str)
local result = ""
local pattern = string.rep("a", 100000)
for i = 1, 100 do
str = string.gsub(str, pattern, "")
result = result .. str
end
return result
end