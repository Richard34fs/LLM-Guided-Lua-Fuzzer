local function generate_code(massive_strings)
local result = {}
for _, str in ipairs(massive_strings) do
local num_matches = select(2, string.gsub(str, "pattern", ""))
local repeated_str = string.rep(str, num_matches)
table.insert(result, repeated_str)
end
return table.concat(result, "")
end