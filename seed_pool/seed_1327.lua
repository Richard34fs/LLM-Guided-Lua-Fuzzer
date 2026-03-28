function manipulate_string(s)
local new_string = ""
for i = 1, #s do
if i % 2 == 0 then
new_string = new_string .. string.rep(s:sub(i, i), 3)
else
new_string = new_string .. string.gsub(s:sub(i, i), ".", "")
end
end
return new_string
end