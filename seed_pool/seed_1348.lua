local function manipulate_massive_strings(n)
local result = ""
for i = 1, n do
result = result .. string.rep("a", i) .. "\n"
end
result = string.gsub(result, "a+", function(match)
return string.rep("b", #match)
end)
return result
end