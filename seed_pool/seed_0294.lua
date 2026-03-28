local function manipulate_massive_strings()
local result = ""
for i = 1, 1000 do
local pattern = string.rep("*", i)
result = result .. string.gsub("abcdefghijklmnopqrstuvwxyz", pattern, "")
end
return result
end