local function manipulate_massive_strings(n)
local pattern = "a" .. string.rep("b", n) .. "c"
local replacement = ""
for i = 1, n do
replacement = replacement .. string.rep("x", i)
end
local result = string.gsub("abc", pattern, replacement)
return result
end