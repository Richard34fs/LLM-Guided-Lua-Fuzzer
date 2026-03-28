function string_manipulation(str)
local result = ""
local count = 0
for i = 1, #str do
if str:sub(i, i) == "@" then
count = count + 1
else
result = result .. str:sub(i, i)
end
end
return result .. string.rep("!", count)
end