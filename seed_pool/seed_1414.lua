local function generate_code(num_lines)
local code = {}
for i = 1, num_lines do
code[i] = string.rep("string.gsub('', '', '') .. ", math.random(10, 20)) .. ";"
end
return table.concat(code, "\n")
end
print(generate_code(15))