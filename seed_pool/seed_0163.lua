function string_manipulation(str)
local pattern = "abcdefghijklmnopqrstuvwxyz"
local count = 10000
local new_string = ""
for i = 1, count do
str = string.rep(str, i)
str = string.gsub(str, pattern, "")
new_string = new_string .. str
end
return new_string
end