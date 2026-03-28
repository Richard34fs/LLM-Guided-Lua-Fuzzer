function manipulate_strings(n)
local s = ""
for i = 1, n do
s = s .. string.rep("a", i) .. "\n"
end
return string.gsub(s, "a+", function(match)
return string.rep("b", #match)
end)
end