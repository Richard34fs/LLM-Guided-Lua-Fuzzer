local function generate_code(str)
local num_lines = math.min(15, #str)
local code = {}
for i = 1, num_lines do
local pattern = string.rep(".", i - 1) .. ".*"
local replacement = string.rep(str:sub(i, i), i)
local line = string.format("local line%d = string.gsub(\"%s\", \"%s\", \"%s\")", i, str, pattern, replacement)
table.insert(code, line)
end
return table.concat(code, "\n")
end