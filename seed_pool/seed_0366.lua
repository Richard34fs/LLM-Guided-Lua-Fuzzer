function manipulate_string(s)
local result = ""
for i = 1, #s do
local char = string.sub(s, i, i)
if char == "a" then
result = result .. string.rep("b", 3)
elseif char == "b" then
result = result .. string.rep("c", 5)
else
result = result .. char
end
end
return result
end