local function generate_code(massive_strings)
local lua_code = ""
for _, str in ipairs(massive_strings) do
local num_repetitions = #str / 2
local repeated_str = string.rep(str, num_repetitions)
local modified_str = string.gsub(repeated_str, "pattern", "replacement")
lua_code = lua_code .. modified_str
end
return lua_code
end