local function string_manipulation(input)
local output = ""
for i = 1, #input do
local char = input:sub(i, i)
if char == "a" then
output = output .. string.rep("b", 3)
elseif char == "b" then
output = output .. string.rep("c", 5)
else
output = output .. char
end
end
return output
end