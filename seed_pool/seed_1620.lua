function generate_lua(str)
local result = ""
for i = 1, string.len(str) do
local char = string.sub(str, i, i)
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