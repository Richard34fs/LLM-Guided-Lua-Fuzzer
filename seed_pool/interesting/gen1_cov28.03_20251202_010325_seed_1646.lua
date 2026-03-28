function string_manipulation(str)
local result = ""
local count = 0
while count < 100 do
str = string.rep(str,2) -- add a space before "2"
str = string.gsub(str,"a","")
count = count + 1
end
for i = 1, #str do
    result = result .. string.sub(str,i,i)
end
return result
end