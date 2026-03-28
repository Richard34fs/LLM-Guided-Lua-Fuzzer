local function generate_lua_code(str)
local parts = {}
for i = 1, #str do
local char = str:sub(i, i)
if char == "a" then
table.insert(parts, string.rep("b", 5))
elseif char == "b" then
table.insert(parts, string.rep("c", 10))
else
table.insert(parts, char)
end
end
return table.concat(parts)
end