function manipulate_massive_strings(num_iterations)
local result = ""
for i = 1, num_iterations do
result = result .. string.rep("a", i) .. "\n"
end
result = string.gsub(result, "a+", function(match)
return string.rep("b", #match)
end)
return result
end