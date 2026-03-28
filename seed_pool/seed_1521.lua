local function manipulate_strings(input)
local result = ""
for i = 1, #input do
local char = string.sub(input, i, i)
if char == "A" then
result = result .. string.rep("B", 5)
elseif char == "C" then
result = result .. string.gsub("D", "E", "F")
else
result = result .. char
end
end
return result
end