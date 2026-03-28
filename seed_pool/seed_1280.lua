local function massive_string(n)
local s = ""
for i = 1, n do
s = s .. string.rep("A", i) .. "\n"
end
return string.gsub(s, "A", "")
end