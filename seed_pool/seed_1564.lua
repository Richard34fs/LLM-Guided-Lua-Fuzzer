function generate_code(str)
local parts = {}
for i = 1, #str, 20 do
local chunk = str:sub(i, i + 19)
chunk = chunk:gsub("a", "b")
table.insert(parts, chunk)
end
local result = table.concat(parts, "")
return result
end