function manipulate_string(s)
local result = ""
for i = 1, #s do
if s:sub(i, i) == "a" then
result = result .. string.rep("b", 3)
else
result = result .. s:sub(i, i)
end
end
return result
end