function manipulate_string(str)
local result = ""
local count = string.rep("#", #str)
for i = 1, #str do
local char = string.sub(str, i, i)
if i % 2 == 0 then
char = string.gsub(char, ".", "!")
end
result = result .. char
end
return count .. result
end