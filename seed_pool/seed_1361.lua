function manipulate_strings(str)
local pattern = "a"
local count = 0
for i = 1, #str do
if string.sub(str, i, i) == "a" then
count = count + 1
end
end
return string.rep("x", count), string.gsub(str, pattern, "")
end