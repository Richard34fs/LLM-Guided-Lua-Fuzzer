function manipulate_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", i) .. "\n"
end
return string.gsub(result, "a+", function(match)
return string.rep("b", #match)
end)
end