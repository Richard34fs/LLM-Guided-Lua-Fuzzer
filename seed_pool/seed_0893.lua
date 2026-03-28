local function generate_massive_strings(num_strings)
local result = {}
for i = 1, num_strings do
local pattern = string.rep("a", i) .. "b"
local replacement = string.rep("c", i)
local modified_string = string.gsub("aaaaab", pattern, replacement)
table.insert(result, modified_string)
end
return result
end