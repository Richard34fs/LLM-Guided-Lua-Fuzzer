local function generate_code(str)
local pattern = "(%w+)"
local count = 1000000
local chunks = {}
for i = 1, count do
table.insert(chunks, string.rep(str, i))
end
return table.concat(chunks, ",")
end