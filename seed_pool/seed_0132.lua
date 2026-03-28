function manipulate_strings(n)
local result = ""
for i = 1, n do
local pattern = string.rep("x", i)
result = result .. string.gsub("xxxxxxxxxx", pattern, "")
end
return result
end