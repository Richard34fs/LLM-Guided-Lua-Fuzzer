function generate_lua_code(str)
local result = ""
for i = 1, #str do
local char = str:sub(i, i)
if char == "a" then
result = result .. string.rep("b", 5)
elseif char == "b" then
result = result .. string.rep("c", 10)
else
result = result .. char
end
end
return result
end