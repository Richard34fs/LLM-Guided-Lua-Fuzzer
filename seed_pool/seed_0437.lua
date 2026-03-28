local function manipulate_string(input)
local output = ""
for i = 1, #input do
if input:sub(i, i) == "A" then
output = output .. string.rep("B", 200)
else
output = output .. input:sub(i, i)
end
end
return output
end