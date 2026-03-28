function manipulate_massive_strings(n)
local s = ""
for i = 1, n do
s = s .. string.rep("x", 10000) .. "\n"
end
return string.gsub(s, "xxxxxxxxxx", "")
end