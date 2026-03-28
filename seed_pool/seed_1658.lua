function manipulate_string(str)
local pattern = "..."
local new_str = ""
for i = 1, #str do
local char = string.sub(str, i, i)
if char == pattern then
new_str = new_str .. string.rep(" ", 50)
else
new_str = new_str .. char
end
end
return new_str
end