local function generate_code(massive_strings)
local code = ""
for i, str in ipairs(massive_strings) do
local pattern = string.rep("a", i)
local replacement = string.rep("b", #str)
str = string.gsub(str, pattern, replacement)
code = code .. str
end
return code
end