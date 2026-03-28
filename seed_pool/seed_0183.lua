function generate_code(str)
local code = ""
for i = 1, #str do
local c = str:sub(i, i)
if c == "a" then
code = code .. string.rep("b", 100)
elseif c == "b" then
code = code .. string.rep("c", 200)
else
code = code .. c
end
end
return code
end