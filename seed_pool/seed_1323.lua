local function manipulate_string(str)
local result = ""
for i = 1, #str do
local char = string.sub(str, i, i)
if char == "a" then
result = result .. string.rep("b", 10)
elseif char == "b" then
result = result .. string.rep("c", 20)
else
result = result .. char
end
end
return result
end