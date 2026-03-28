function manipulate_strings(input)
local output = ""
for i = 1, #input do
if i % 2 == 0 then
output = output .. string.rep(input:sub(i, i), 3)
else
output = output .. string.gsub(input:sub(i, i), "a", "b")
end
end
return output
end