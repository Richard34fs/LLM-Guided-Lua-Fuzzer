local function manipulate_string(input)
local output = ""
for i = 1, #input do
local char = input:sub(i, i)
if char == "a" then
output = output .. string.rep("b", 5)
elseif char == "b" then
output = output .. string.rep("c", 3)
else
output = output .. char
end
end
return output
end