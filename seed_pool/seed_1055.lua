local function generate_code(input)
local pattern = "((a*b+c*)*d)"
local replacement = ""
local result = string.rep("a", 10000) .. "b" .. string.rep("c", 5000) .. "d"
for i = 1, 10 do
result = string.gsub(result, pattern, replacement)
end
return result
end