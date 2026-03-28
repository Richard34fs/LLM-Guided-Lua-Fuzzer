function manipulate_string(s)
local result = ""
for i = 1, #s do
if string.match(s, ".-#") then
result = result .. string.rep("x", 3)
else
result = result .. s:sub(i, i)
end
end
return result
end