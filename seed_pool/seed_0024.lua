local function generate_code(massive_strings)
local code = {}
for i, str in ipairs(massive_strings) do
local pattern = string.rep("%", i) .. "s"
local replacement = string.rep(" ", i)
str = string.gsub(str, pattern, replacement)
table.insert(code, str)
end
return table.concat(code, "\n")
end