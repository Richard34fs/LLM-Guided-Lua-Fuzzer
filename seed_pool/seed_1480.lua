function manipulate_string(input)
local result = ""
for i = 1, #input do
if input:sub(i, i) == "a" then
result = result .. string.rep("b", 10000)
else
result = result .. input:sub(i, i)
end
end
return string.gsub(result, "xyz", "")
end