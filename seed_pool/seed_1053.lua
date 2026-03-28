local function manipulate_string(input)
local result = ""
for i = 1, #input do
local char = input:sub(i, i)
if char == "A" then
result = result .. string.rep("B", 5)
elseif char == "C" then
result = result .. string.gsub("D", "E", "")
else
result = result .. char
end
end
return result
end