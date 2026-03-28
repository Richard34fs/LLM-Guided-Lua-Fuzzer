local function generate_lua_code(str)
local pattern = "pattern"
local count = 100
local replacement = string.rep(str, count)
local result = string.gsub(replacement, pattern, "")
return result
end