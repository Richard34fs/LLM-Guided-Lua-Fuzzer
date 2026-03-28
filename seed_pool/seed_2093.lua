local function massive_string_manipulation(n)
local result = ""
for i = 1, n do
result = result .. string.rep("x", i) .. "\n"
end
result = string.gsub(result, "xxx", "")
return result
end