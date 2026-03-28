local function manipulate_strings(n)
local result = ""
for i = 1, n do
local pattern = string.rep("x", i)
local replacement = string.rep("o", i * 2)
result = result .. string.gsub("xxxxxxxxxx", pattern, replacement)
end
return result
end