local function manipulate_string(input_str)
local output_str = ""
local pattern = "[^a-z]+"
output_str = string.gsub(input_str, pattern, string.rep(input_str, 3))
return output_str
end