local function massive_string_manipulation(n)
local result = ""
for i = 1, n do
result = result .. string.rep("x", i) .. "\n"
end
return string.gsub(result, "xxx", "o")
end