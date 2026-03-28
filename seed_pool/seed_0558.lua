local function manipulate_string(input_string)
local output = ""
local match = input_string:match("............")
if match then
output = input_string:gsub(match, ".")
end
return output
end