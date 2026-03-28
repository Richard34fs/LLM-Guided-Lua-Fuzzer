local function generate_code(massive_strings)
local output = {}
for _, str in ipairs(massive_strings) do
local repeated = string.rep(str, 1000)
local modified = string.gsub(repeated, "bad", "good")
table.insert(output, modified)
end
return table.concat(output, "\n")
end