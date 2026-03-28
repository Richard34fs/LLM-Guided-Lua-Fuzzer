local function manipulate_string(input)
local result = ""
for i = 1, #input do
local char = string.sub(input, i, i)
if char == "a" then
result = result .. string.rep("b", 5)
elseif char == "b" then
result = result .. string.rep("c", 3)
else
result = result .. char
end
end
return result
end