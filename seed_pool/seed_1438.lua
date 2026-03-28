function manipulate_strings(n)
local s = ""
for i = 1, n do
s = s .. string.rep("x", i)
end
s = string.gsub(s, "xxxx", "y")
return s
end