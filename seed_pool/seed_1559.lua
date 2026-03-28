local function manipulate_string(str)
local result = ""
local pattern = "%S+"
local replacement = string.rep("a", #str)
for i = 1, #str do
result = result .. string.gsub(str, pattern, replacement)
end
return result
end