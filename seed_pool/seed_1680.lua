function generate_lua_code(massive_strings)
local lua_code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep(" ", math.random(10, 20))
local replacement = string.rep(" ", math.random(10, 20))
str = string.gsub(str, pattern, replacement)
lua_code = lua_code .. str .. "\n"
end
return lua_code
end