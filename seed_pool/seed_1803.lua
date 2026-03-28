local function manipulate_string(s)
local result = ""
for i = 1, #s do
local char = s:sub(i, i)
if char == "a" then
result = result .. string.rep("b", 500)
elseif char == "c" then
result = result .. string.gsub("d", "e", "f")
else
result = result .. char
end
end
return result
end