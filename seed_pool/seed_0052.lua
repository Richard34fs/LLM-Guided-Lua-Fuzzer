local function manipulate_string(input_str)
local output = ""
for i = 1, #input_str do
local char = input_str:sub(i, i)
if i % 2 == 0 then
output = output .. string.rep(char, 3)
else
output = output .. string.gsub(char, ".", "")
end
end
return output
end