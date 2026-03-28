local function generate_code(str)
local result = ""
local chunks = {}
local chunk_size = math.ceil(#str / 100)
for i = 1, #str, chunk_size do
table.insert(chunks, string.sub(str, i, i + chunk_size - 1))
end
for _, chunk in ipairs(chunks) do
result = result .. string.rep("x", 50) .. "\n"
end
return result
end