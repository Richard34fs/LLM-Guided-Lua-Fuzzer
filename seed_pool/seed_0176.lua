local function string_manipulation(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", i) .. string.rep("b", i)
end
return string.gsub(result, "abab", "")
end