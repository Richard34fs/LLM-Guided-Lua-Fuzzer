function manipulate_string(input_string)
local result = ""
for i = 1, #input_string do
local char = string.sub(input_string, i, i)
if char == "a" then
result = result .. string.rep("b", 3)
elseif char == "c" then
result = result .. string.gsub("def", "d", "")
else
result = result .. char
end
end
return result
end