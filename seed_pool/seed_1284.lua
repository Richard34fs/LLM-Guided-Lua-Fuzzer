function manipulate_strings(input)
local output = ""
for i = 1, #input do
if input:sub(i, i):match("[%*%!%?]") then
output = output .. string.rep(input:sub(i, i), 50)
else
output = output .. input:sub(i, i)
end
end
return output
end