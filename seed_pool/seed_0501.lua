function manipulate_string(str)
local count = string.match(str, "%d+") or 1
local pattern = string.rep(".", count)
local new_str = ""
for i = 1, #str do
local char = string.sub(str, i, i)
if char == "." then
new_str = new_str .. string.rep("*", count)
else
new_str = new_str .. char
end
end
return new_str
end