function manipulate_strings(num_iterations)
local result = ""
for i = 1, num_iterations do
result = result .. string.rep("x", i) .. string.gsub("abcd", "b", "")
end
return result
end