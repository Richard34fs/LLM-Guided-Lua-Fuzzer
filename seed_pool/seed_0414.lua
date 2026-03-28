local function manipulate_string(str)
local count = string.rep("x", 2000)
local result = ""
for i = 1, #str do
local char = str:sub(i, i)
if i % 2 == 0 then
char = string.gsub(char, ".", count)
end
result = result .. char
end
return result
end