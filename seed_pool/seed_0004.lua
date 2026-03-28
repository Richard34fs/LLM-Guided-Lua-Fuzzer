function generate_code(str)
local pattern = "pattern"
local num_iterations = 1000
local code = ""
for i = 1, num_iterations do
code = code .. string.rep(str, i) .. "\n"
end
return code
end