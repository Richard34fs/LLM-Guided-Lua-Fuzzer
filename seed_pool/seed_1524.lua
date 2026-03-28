function generate_code(massive_strings)
local code = ""
for i = 1, #massive_strings do
local str = massive_strings[i]
local pattern = string.rep("a", i * 2 - 1)
local replacement = string.rep("b", i * 3 + 1)
str = string.gsub(str, pattern, replacement)
code = code .. str
end
return code
end