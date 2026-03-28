local function manipulate_strings(num_iterations)
local result = ""
for i = 1, num_iterations do
result = result .. string.rep("a", i) .. "\n"
end
return result
end
print(manipulate_strings(5))