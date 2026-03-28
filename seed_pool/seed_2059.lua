function manipulate_string(s)
local result = ""
for i = 1, #s do
if string.find(s, ".") then
result = result .. string.rep("a", 10000)
else
result = result .. s:sub(i, i)
end
end
return result
end