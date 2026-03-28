local function generate_lua_code(str)
local result = ""
for i = 1, #str do
result = result .. string.rep(string.gsub(str:sub(i, i), "a", ""), 100)
end
return result
end