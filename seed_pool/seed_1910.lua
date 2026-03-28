function string_manipulation(input)
local output = ""
for i = 1, #input do
if i % 2 == 0 then
output = output .. input:sub(i, i)
else
output = output .. string.rep(input:sub(i, i), 3)
end
end
return output
end