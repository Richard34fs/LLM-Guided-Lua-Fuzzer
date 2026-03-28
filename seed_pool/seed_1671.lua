local function generate_code(massive_strings)
local lua_code = ""
for _, str in ipairs(massive_strings) do
local num_repetitions = math.ceil(#str / 256)
local pattern = string.rep("x", #str - 1) .. "y"
local replacement = string.rep(str, num_repetitions)
lua_code = lua_code .. string.gsub(pattern, pattern, replacement)
end
return lua_code
end