local function generate_lua_code(massive_strings)
local lua_code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep("x", #str)
local replaced_str = string.gsub(str, pattern, "")
lua_code = lua_code .. replaced_str
end
return lua_code
end