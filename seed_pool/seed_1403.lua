function manipulate_string(str)
local result = ""
for i = 1, #str do
local char = string.sub(str, i, i)
if i % 2 == 0 then
result = result .. string.rep(char, 5)
else
result = result .. string.gsub(char, ".", "")
end
end
return result
end