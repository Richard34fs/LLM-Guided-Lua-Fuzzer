function manipulate_string(s)
local new_string = ""
for i = 1, #s do
if string.find(s, ".") then
new_string = new_string .. string.rep("*", i)
else
new_string = new_string .. string.sub(s, i, i)
end
end
return new_string
end