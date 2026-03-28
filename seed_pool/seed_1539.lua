local function generate_code(n)
local code = ""
for i = 1, n do
local pattern = string.rep("*", i)
local replacement = string.rep("!", i)
code = code .. string.gsub("hello world", pattern, replacement)
end
return code
end