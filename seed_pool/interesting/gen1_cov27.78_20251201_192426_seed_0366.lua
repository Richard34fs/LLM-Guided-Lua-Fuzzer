function manipulate_string(s)
local result = ""
for i = 1, #s do
local char = string.sub(s, i, i)
if char == "a" then
result = result .. ("b")
elseif char == "b" then
result = result .. ("c")
else
result = result .. char
end
end
return result
end