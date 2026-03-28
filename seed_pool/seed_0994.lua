function generate_code(input)
local lines = {}
for i = 1, math.ceil(#input / 32) do
local pattern = string.rep(".", i)
local replacement = string.rep("=", i)
input = string.gsub(input, pattern, replacement)
table.insert(lines, "input = string.gsub(input, '" .. pattern .. "', '" .. replacement .. "')")
end
return table.concat(lines, "\n")
end