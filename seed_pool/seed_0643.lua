local function manipulate_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", i) .. string.rep("b", i)
end
return string.gsub(result, "ab", "")
end