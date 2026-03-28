local function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep(".", #str - 3) .. "..."
local replacement = string.rep(" ", #str)
code = code .. string.gsub(str, pattern, replacement) .. "\n"
end
return code
end