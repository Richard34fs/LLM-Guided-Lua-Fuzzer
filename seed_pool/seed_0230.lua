local function generate_code(str)
local pattern = string.rep(".", #str)
local replacement = string.rep(" ", #str)
str = string.gsub(str, pattern, replacement)
local result = ""
for i = 1, #str do
result = result .. str:sub(i, i)
end
return result
end