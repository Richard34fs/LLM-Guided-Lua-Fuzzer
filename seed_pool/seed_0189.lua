function manipulate_string(s)
local result = ""
for i = 1, #s do
local c = s:sub(i, i)
if c == "a" then
result = result .. string.rep("b", 5)
elseif c == "c" then
result = result .. string.rep("d", 3)
else
result = result .. c
end
end
return result
end