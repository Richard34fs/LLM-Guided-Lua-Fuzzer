local function generate_lua_code(str)
local output = ""
for i = 1, #str do
local char = str:sub(i, i)
if char == "a" then
output = output .. ("b"):rep(5)
elseif char == "b" then
output = output .. ("c"):rep(3)
else
output = output .. char
end
end
return output
end