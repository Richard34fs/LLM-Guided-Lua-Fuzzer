local function generate_massive_strings(num_iterations)
local result = ""
for i = 1, num_iterations do
result = result .. string.rep("a", 100000)
end
return result
end