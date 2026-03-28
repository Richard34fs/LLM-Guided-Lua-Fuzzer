local function string_manipulation(input_string)
local output = ""
for i = 1, #input_string do
if input_string:sub(i, i) == "a" then
output = output .. string.rep("b", 3)
else
output = output .. input_string:sub(i, i)
end
end
return output
end