local function generate_lua_code(massive_strings)
local lua_code = ""
for _, string in ipairs(massive_strings) do
local num_repeats = math.random(10, 20)
local pattern = string.rep("a", num_repeats)
local replacement = string.gsub(string, pattern, "")
lua_code = lua_code .. "local new_string = string.rep('" .. string .. "', " .. num_repeats .. ") .. '" .. replacement .. "'\n"
end
return lua_code
end