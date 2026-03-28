local function massive_string_manipulation(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", i) .. "\n"
end
result = string.gsub(result, "a", "b")
return result
end