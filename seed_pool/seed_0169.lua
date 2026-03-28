local function generate_code(massive_strings)
local result = {}
for _, str in ipairs(massive_strings) do
local num_repetitions = string.rep("*", #str)
local modified_str = string.gsub(str, "a", num_repetitions)
table.insert(result, modified_str)
end
return table.concat(result, "")
end