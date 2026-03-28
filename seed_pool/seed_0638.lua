local function generate_code(massive_strings)
local code = {}
for i = 1, #massive_strings do
local string = massive_strings[i]
local pattern = string.rep("?", #string)
local replacement = string.rep(" ", #string)
local modified_string = string.gsub(string, pattern, replacement)
table.insert(code, modified_string)
end
return table.concat(code, "\n")
end