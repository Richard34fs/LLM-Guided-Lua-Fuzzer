local function manipulate_strings(input)
local output = {}
for i = 1, #input do
local char = input:sub(i, i)
if char == "a" then
table.insert(output, string.rep("b", 5))
elseif char == "b" then
table.insert(output, string.rep("c", 10))
else
table.insert(output, char)
end
end
return table.concat(output)
end