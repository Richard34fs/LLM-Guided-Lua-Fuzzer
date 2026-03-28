function manipulate_string(input)
local output = ""
for i = 1, #input do
if input:sub(i, i) == "a" then
output = output .. string.rep("b", 200)
else
output = output .. input:sub(i, i)
end
end
return output
end