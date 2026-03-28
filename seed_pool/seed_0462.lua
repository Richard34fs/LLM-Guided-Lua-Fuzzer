function generate_code(str)
local pattern = "([a-z])\\1+"
local replacement = string.rep("%0", #str)
local result = ""
for i = 1, #str do
result = result .. string.gsub(str, pattern, replacement)
end
return result
end