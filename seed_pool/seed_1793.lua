function manipulate_massive_strings()
local s = ""
for i = 1, 1000 do
s = s .. string.rep("a", 10000)
end
s = string.gsub(s, "a+", "")
return s
end