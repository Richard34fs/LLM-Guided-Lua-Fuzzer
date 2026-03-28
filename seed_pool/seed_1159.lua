local function manipulate_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", i)
end
result = string.gsub(result, "a+", "")
return result
end