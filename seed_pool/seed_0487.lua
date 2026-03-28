local function manipulate_string(str)
local new_str = ""
for i = 1, #str do
local char = str:sub(i, i)
if char == "a" then
new_str = new_str .. string.rep("b", 500)
elseif char == "c" then
new_str = new_str .. string.gsub(string.rep("d", 100), "d", "e")
else
new_str = new_str .. char
end
end
return new_str
end