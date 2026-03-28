function generate_code(n)
local s = ""
for i = 1, n do
s = s .. string.rep("a", i)
end
s = string.gsub(s, "a+", function(m) return string.rep(m, #m) end)
return s
end