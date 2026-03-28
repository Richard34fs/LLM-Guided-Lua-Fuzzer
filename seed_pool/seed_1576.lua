local function generate_lua_code(massive_strings)
local lua_code = ""
for _, string in ipairs(massive_strings) do
local replacements = string.gsub(string, "pattern", "")
lua_code = lua_code .. string.rep(replacements, 1000)
end
return lua_code
end