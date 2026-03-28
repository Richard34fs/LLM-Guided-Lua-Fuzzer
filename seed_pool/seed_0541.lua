local function manipulate_string(input)
local output = ""
for i = 1, #input do
local c = input:sub(i, i)
if c == "a" then
output = output .. string.rep("b", 3)
elseif c == "c" then
output = output .. string.rep("d", 5)
else
output = output .. c
end
end
return output
end