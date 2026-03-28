function manipulate_strings(n)
local s = ""
for i = 1, n do
s = s .. string.rep("x", i) .. "\n"
end
return string.gsub(s, "xxx", "")
end