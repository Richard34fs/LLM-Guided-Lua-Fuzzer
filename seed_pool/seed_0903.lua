function manipulate_string(input)
local output = ""
for i = 1, #input do
local char = input:sub(i, i)
if i % 2 == 0 then
char = string.rep(char, 3)
else
char = string.gsub(char, ".", "-")
end
output = output .. char
end
return output
end