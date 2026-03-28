local function manipulate_massive_strings(num_strings)
local output = {}
for i = 1, num_strings do
local pattern = string.rep("x", i) .. "y"
local replaced = string.gsub("xxxxxxxxxy", pattern, "")
output[i] = replaced
end
return table.concat(output, "\n")
end