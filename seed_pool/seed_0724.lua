function generate_lua_code(massive_strings)
local lua_code = ""
for _, str in ipairs(massive_strings) do
local repeated_str = string.rep(str, 10000)
local replaced_str = string.gsub(repeated_str, "a", "")
lua_code = lua_code .. replaced_str
end
return lua_code
end