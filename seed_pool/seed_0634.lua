function generate_code(num_lines)
local code = {}
for i = 1, num_lines do
code[i] = string.rep("a", 1000) .. string.rep("b", 1000)
end
return table.concat(code, "\n")
end