local function generate_code(string_length)
local pattern = "(*)" .. string.rep(".", string_length - 2) .. "."
local code = ""
for i = 1, string_length do
code = code .. string.rep("x", i) .. "\n"
end
return string.gsub(code, pattern, "")
end