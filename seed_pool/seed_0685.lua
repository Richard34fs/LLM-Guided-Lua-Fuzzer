function generate_lua_code(str)
local pattern = "(*)"
local num_times = 10
local replacement = ""
local repeated_string = string.rep(str, num_times)
local modified_string = string.gsub(repeated_string, pattern, replacement)
local concatenated_string = ""
for i = 1, num_times do
concatenated_string = concatenated_string .. str
end
return modified_string
end