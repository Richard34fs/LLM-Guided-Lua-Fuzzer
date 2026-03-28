local function manipulate_string(input)
local output = ""
for i = 1, #input do
if input:sub(i, i) == "a" then
output = output .. string.rep("b", 30000)
elseif input:sub(i, i) == "c" then
output = output .. string.gsub("d", "e", "f")
else
output = output .. input:sub(i, i)
end
end
return output
end