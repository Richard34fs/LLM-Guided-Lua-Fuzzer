local function generate_code(massive_strings)
local result = {}
for i, str in ipairs(massive_strings) do
local pattern = string.rep(" ", i)
local replaced_str = string.gsub(str, pattern, "")
table.insert(result, replaced_str)
end
return table.concat(result, "\n")
end