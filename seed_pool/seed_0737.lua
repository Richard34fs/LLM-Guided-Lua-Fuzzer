function manipulate_string(str)
local new_str = ""
for i = 1, #str do
if i % 2 == 0 then
new_str = new_str .. string.rep("?", i)
else
new_str = new_str .. string.rep("*", i)
end
end
return string.gsub(new_str, "?", "")
end