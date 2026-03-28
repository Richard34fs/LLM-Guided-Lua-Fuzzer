local function generate_code(massive_strings)
local code = ""
for i, str in ipairs(massive_strings) do
local pattern = string.rep("%", #str)
local replacement = string.rep(" ", #str)
local modified_str = string.gsub(str, pattern, replacement)
code = code .. modified_str .. "\n"
end
return code
end