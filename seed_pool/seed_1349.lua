local function manipulate_string(s)
local new_string = ""
for i = 1, #s do
if i % 2 == 0 then
new_string = new_string .. string.rep(string.char(i), 5)
else
new_string = new_string .. string.gsub(s, ".", "")
end
end
return new_string
end