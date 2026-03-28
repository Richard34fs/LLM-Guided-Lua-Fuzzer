local function manipulate_string(str)
local result = ""
for i = 1, #str do
if str:sub(i, i):match("[^a-zA-Z0-9]") then
result = result .. string.rep("*", 5)
else
result = result .. str:sub(i, i)
end
end
return result
end