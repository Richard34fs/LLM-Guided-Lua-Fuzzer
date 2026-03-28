local function generate_code(massive_strings)
local code = ""
for _, string in ipairs(massive_strings) do
local num_repetitions = #string / 2
local repeated_string = string.rep(string, num_repetitions)
local modified_string = string.gsub(repeated_string, "pattern", "replacement")
code = code .. modified_string
end
return code
end