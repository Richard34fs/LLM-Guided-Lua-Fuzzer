local function manipulate_string(input_str)
local result = ""
for i = 1, #input_str do
local char = input_str:sub(i, i)
if char == "a" then
result = result .. string.rep("b", 5000)
elseif char == "b" then
result = result .. string.rep("c", 1000)
else
result = result .. char
end
end
return result
end