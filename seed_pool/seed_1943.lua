local function manipulate_string(s)
local result = ""
for i = 1, #s do
local c = string.sub(s, i, i)
if c == "a" then
result = result .. string.rep("b", 200)
elseif c == "c" then
result = result .. string.gsub("d", "e", "f")
else
result = result .. c
end
end
return result
end