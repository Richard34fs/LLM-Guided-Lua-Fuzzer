local function generate_code(str)
local lines = {}
local num_lines = math.min(15, #str)
for i = 1, num_lines do
local line = string.rep(string.char(34), i) .. str .. string.rep(string.char(34), i)
line = string.gsub(line, string.char(34), " ")
lines[i] = line
end
return table.concat(lines, "\n")
end