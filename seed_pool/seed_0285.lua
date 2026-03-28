local function generate_lua_code(str)
local pattern = "(*)"
local repeated_str = string.rep(str, 1000)
local modified_str = string.gsub(repeated_str, pattern, "")
local result = ""
for i = 1, 10 do
result = result .. modified_str
end
return result
end