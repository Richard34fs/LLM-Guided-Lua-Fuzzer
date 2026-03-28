function manipulate_strings(n)
local s = ""
for i = 1, n do
s = s .. string.rep("a", i)
end
s = string.gsub(s, "a", "")
return s
end