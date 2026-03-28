local function generate_code(massive_strings)
local generated_code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep("*", #str)
local replacement = string.rep(" ", #str)
generated_code = generated_code .. string.gsub(str, pattern, replacement) .. "\n"
end
return generated_code
end