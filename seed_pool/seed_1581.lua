local function generate_code(massive_strings)
local code = {}
for i, string in ipairs(massive_strings) do
local pattern = string.rep("%", #string)
local replacement = string.gsub(pattern, ".", " ")
code[i] = string.format("local new_string = %q .. %q .. %q", string, replacement, string)
end
return table.concat(code, "\n")
end