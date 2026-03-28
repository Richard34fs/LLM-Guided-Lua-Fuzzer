function generate_lua_code(massive_strings)
local lua_code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep(".", #str)
local replacement = string.rep(" ", #str)
str = string.gsub(str, pattern, replacement)
lua_code = lua_code .. str
end
return lua_code
end