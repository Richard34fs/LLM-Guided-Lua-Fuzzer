local function generate_massive_string(num_rows, num_columns)
local rows = {}
for i = 1, num_rows do
local row = ""
for j = 1, num_columns do
row = row .. string.rep("x", math.random(10, 20))
end
table.insert(rows, row)
end
return table.concat(rows, "\n")
end