function manipulate_string(s)
local count = string.rep(" ", #s)
local result = ""
for i = 1, #s do
local char = s:sub(i, i)
if char == "a" then
count = count:gsub("a", "")
else
result = result .. char
end
end
return result .. count
end