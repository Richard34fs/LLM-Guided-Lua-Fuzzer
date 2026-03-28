function string_manipulation(str)
local result = ""
local count = 0
for i = 1, #str do
if str:sub(i, i) == "a" then
count = count + 1
end
end
result = result .. string.rep("b", count)
result = result .. string.rep("c", count)
return result
end