function manipulate_strings(n)
local result = ""
for i = 1, n do
local pattern = string.rep("a", i) .. "b"
local replacement = string.rep("c", i)
result = result .. string.gsub("aabbccdd", pattern, replacement)
end
return result
end