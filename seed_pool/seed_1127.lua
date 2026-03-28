function manipulate_string(input)
local output = ""
local pattern = "..."
for i = 1, #input do
local char = string.sub(input, i, i)
if string.match(char, pattern) then
output = output .. string.rep(char, 3)
else
output = output .. char
end
end
return output
end