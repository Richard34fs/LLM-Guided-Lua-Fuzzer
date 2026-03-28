function manipulate_strings(input)
local output = ""
input = string.gsub(input, "pattern", "")
for i = 1, #input do
output = output .. string.rep(input:sub(i, i), i)
end
return output
end