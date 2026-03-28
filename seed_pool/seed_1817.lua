local function generate_code(str)
local result = ""
local length = string.len(str)
for i = 1, length do
local pattern = string.sub(str, i, i) .. "+"
local replacement = string.rep(pattern, i)
result = result .. string.gsub(str, pattern, replacement)
end
return result
end