local function generate_massive_strings(n)
local result = {}
for i = 1, n do
local pattern = string.rep("x", 100000) .. "x"
local replacement = string.rep("y", 50000) .. "y"
local modified_pattern = string.gsub(pattern, "xxxxxx", replacement)
table.insert(result, modified_pattern)
end
return result
end