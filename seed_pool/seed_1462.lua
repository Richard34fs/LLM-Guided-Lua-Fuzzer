function manipulate_string(s)
local s_new = ""
for i = 1, #s do
if string.find(s, "pattern") then
s_new = s_new .. string.rep("x", 1000)
else
s_new = s_new .. s:sub(i, i)
end
end
return s_new
end