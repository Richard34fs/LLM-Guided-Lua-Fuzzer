function manipulate_strings(n)
local result = ""
for i = 1, n do
local pattern = string.rep("a", i) .. "b" .. string.rep("c", i)
local replacement = string.rep("x", i) .. "y" .. string.rep("z", i)
result = result .. string.gsub("abcabcc", pattern, replacement)
end
return result
end