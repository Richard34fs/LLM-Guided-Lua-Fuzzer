local function manipulate_string(input_str)
local output = ""
for i = 1, #input_str do
local char = string.sub(input_str, i, i)
if i % 2 == 0 then
char = string.rep(char, 3)
end
output = output .. char
end
return output
end