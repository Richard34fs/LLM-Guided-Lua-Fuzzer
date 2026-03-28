function manipulate_strings(n)
local str = ""
for i = 1, n do
str = str .. string.rep("a", i)
end
return string.gsub(str, "a+", "")
end