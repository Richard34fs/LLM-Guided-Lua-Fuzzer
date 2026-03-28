function manipulate_string(s)
local new_s = ""
for i = 1, #s do
if i % 2 == 0 then
new_s = new_s .. string.rep(string.sub(s, i, i), 3)
else
new_s = new_s .. string.sub(s, i, i)
end
end
return new_s
end