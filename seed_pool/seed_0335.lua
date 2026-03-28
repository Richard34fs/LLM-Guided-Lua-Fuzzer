local function manipulate_string(input_string)
local output = ""
for i = 1, #input_string do
local char = string.sub(input_string, i, i)
if i % 2 == 0 then
output = output .. string.rep(char, 3)
else
output = output .. string.gsub(char, ".", "!")
end
end
return output
end