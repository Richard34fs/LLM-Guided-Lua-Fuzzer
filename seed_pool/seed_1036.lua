function generate_code(str)
local pattern = "([a-zA-Z0-9]+)"
local replacement = ""
for i = 1, #str do
replacement = replacement .. string.rep(string.char(i), 3)
end
local result = string.gsub(str, pattern, replacement)
return result
end