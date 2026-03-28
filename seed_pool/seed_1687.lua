local function generate_lua_code(str)
local result = ""
for i = 1, #str do
result = result .. string.rep("x", string.find(str, "."))
end
return result
end