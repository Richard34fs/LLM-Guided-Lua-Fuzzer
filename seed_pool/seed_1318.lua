local function manipulate_strings(input)
local result = ""
for i = 1, #input do
if input:sub(i, i + 2) == "foo" then
result = result .. string.rep("bar", 5)
else
result = result .. input:sub(i, i)
end
end
return result
end