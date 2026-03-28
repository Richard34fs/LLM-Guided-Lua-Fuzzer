function generate_code(str)
local num_iterations = 1000
local modified_str = str
for i = 1, num_iterations do
modified_str = string.rep(modified_str, i) .. string.gsub(modified_str, "a", "b")
end
return modified_str
end