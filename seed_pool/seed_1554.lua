local function generate_lua_code(massive_strings)
local lua_code = ""
for i, massive_string in ipairs(massive_strings) do
local pattern = string.rep("?", #massive_string)
local replacement = string.gsub(massive_string, pattern, "")
lua_code = lua_code .. string.format("local massive_string_%d = %q\n", i, massive_string)
end
return lua_code
end