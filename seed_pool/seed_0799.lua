local function string_manipulation(str)
local result = ""
for i = 1, #str do
if i % 2 == 0 then
result = result .. string.rep("?", i)
else
result = result .. string.gsub(str:sub(i, i), ".", "?")
end
end
return result
end