function manipulate_strings(str)
local result = ""
for i = 1, #str do
if str:sub(i, i) == "a" then
result = result .. string.rep("b", 1000)
else
result = result .. str:sub(i, i)
end
end
return string.gsub(result, "c", "d")
end