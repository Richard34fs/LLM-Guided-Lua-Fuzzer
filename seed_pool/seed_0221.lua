function manipulate_string(str)
local result = ""
for i = 1, #str do
local char = str:sub(i, i)
if i % 2 == 0 then
result = result .. string.rep(char, 3)
else
result = result .. string.gsub(char, ".", "")
end
end
return result
end