local function generate_code(str)
local result = ""
for i = 1, #str do
local char = str:sub(i, i)
if char == "a" then
result = result .. string.rep("b", 1000)
elseif char == "c" then
result = result .. string.gsub("def", "e", "")
else
result = result .. char
end
end
return result
end