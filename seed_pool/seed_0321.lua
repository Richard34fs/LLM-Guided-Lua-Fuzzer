function manipulate_strings(n)
local s = ""
for i = 1, n do
s = s .. string.rep("x", i) .. "\n"
end
s = string.gsub(s, "xx", "o")
return s
end