function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep(str, 100) .. "!"
local replacement = string.rep("a", #str * 100)
code = code .. string.gsub(pattern, replacement, "")
end
return code
end