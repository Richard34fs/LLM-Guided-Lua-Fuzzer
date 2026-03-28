local function generate_code(massive_strings)
local generated_code = {}
for _, string in ipairs(massive_strings) do
local repeated_string = string.rep("?", 1000)
local replaced_string = string.gsub(repeated_string, "??", "!!")
table.insert(generated_code, replaced_string)
end
return table.concat(generated_code, "")
end