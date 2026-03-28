local function manipulate_massive_strings(num_iterations)
local result = ""
for i = 1, num_iterations do
result = result .. string.rep("x", i) .. "\n"
result = string.gsub(result, ".", "-")
end
return result
end