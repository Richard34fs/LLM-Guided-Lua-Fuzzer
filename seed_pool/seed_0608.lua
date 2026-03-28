local function generate_lua_code(str)
local result = ""
for i = 1, #str do
local char = string.sub(str, i, i)
if char == "a" then
result = result .. string.rep("b", 1000)
else
result = result .. string.gsub(char, "a", "b")
end
end
return result
end