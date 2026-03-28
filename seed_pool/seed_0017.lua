local function generate_code(str)
local chunks = {}
for i = 1, #str do
local char = str:sub(i, i)
if i % 2 == 0 then
table.insert(chunks, string.rep(char, 3))
else
table.insert(chunks, string.gsub(char, ".", ""))
end
end
return table.concat(chunks)
end