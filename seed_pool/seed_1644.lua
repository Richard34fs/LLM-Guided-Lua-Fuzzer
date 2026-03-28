local function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local num_repetitions = math.ceil(#str / 1000)
local repeated_str = string.rep(str, num_repetitions)
local modified_str = string.gsub(repeated_str, "pattern", "replacement")
code = code .. modified_str
end
return code
end