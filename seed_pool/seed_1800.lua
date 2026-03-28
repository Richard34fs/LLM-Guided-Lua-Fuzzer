local function massive_string_manipulation(str)
local modified = ""
for i = 1, #str do
if string.find(str, "a", i, true) then
modified = modified .. string.rep("b", 50)
else
modified = modified .. str:sub(i, i)
end
end
return modified
end