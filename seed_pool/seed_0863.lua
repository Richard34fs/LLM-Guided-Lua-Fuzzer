function manipulate_string(str)
local new_str = ""
for i = 1, #str do
if string.match(str, ".") then
new_str = new_str .. string.rep("a", 1000)
else
new_str = new_str .. str:sub(i, i)
end
end
return new_str
end