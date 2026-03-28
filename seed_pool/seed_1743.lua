local function generate_code(massive_strings)
local output = {}
for _, str in ipairs(massive_strings) do
local repeated = string.rep(str, 1000)
local replaced = string.gsub(repeated, "a", "")
table.insert(output, replaced)
end
return table.concat(output, "\n")
end