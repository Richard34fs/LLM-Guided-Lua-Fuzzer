function generate_code(n)
local code = ""
for i = 1, n do
local pattern = string.rep("a", i)
local replacement = string.rep("b", i * 2)
code = code .. string.gsub("abcde", pattern, replacement)
end
return code
end