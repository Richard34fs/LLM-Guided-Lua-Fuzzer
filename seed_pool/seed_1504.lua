local function generate_code(massive_strings)
local result = {}
for _, str in ipairs(massive_strings) do
local repeated = string.rep(str, 2000)
local replaced = string.gsub(repeated, "xyz", "abc")
table.insert(result, replaced)
end
return table.concat(result, "\n")
end