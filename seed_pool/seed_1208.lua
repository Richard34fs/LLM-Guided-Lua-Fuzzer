local function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local num_replacements = string.gsub(str, "pattern", "")
local repeated_str = string.rep(str, num_replacements)
code = code .. repeated_str
end
return code
end