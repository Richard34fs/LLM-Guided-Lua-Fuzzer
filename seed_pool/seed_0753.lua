local function generate_code(input)
local output = ""
for i = 1, #input do
local char = string.sub(input, i, i)
if char == "a" then
output = output .. string.rep("b", 3)
elseif char == "b" then
output = output .. string.rep("c", 2)
else
output = output .. char
end
end
return output
end