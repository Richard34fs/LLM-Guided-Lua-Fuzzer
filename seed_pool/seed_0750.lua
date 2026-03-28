function manipulate_string(s)
local result = ""
for i = 1, #s do
if i % 2 == 0 then
result = result .. string.rep("~", i) .. "\n"
else
result = result .. string.gsub(s, ".", "~") .. "\n"
end
end
return result
end