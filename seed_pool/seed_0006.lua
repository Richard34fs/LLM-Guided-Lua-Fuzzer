local function massive_string(n)
local s = ""
for i = 1, n do
s = s .. string.rep("a", 10^6)
end
return string.gsub(s, "a", "")
end