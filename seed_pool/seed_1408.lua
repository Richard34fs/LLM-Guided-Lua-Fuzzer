local function generate_code(n)
local code = ""
for i = 1, n do
local pattern = string.rep("a", i) .. "b"
local replacement = string.rep("x", i)
code = code .. string.gsub("ababab", pattern, replacement)
end
return code
end