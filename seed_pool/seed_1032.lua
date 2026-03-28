function generate_code(str)
local pattern = "(%S+)"
local num_matches = select(2, string.gsub(str, pattern, "")) + 1
local generated_code = ""
for i = 1, num_matches do
generated_code = generated_code .. string.rep(string.gsub(str, pattern, "%1"), i) .. "\n"
end
return generated_code
end