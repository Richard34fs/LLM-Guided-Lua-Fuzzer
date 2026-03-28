local function generate_code(str)
local chunks = {}
local num_chunks = #str / 20
local pattern = "[a-z]+"
for i = 1, num_chunks do
local chunk = string.sub(str, (i - 1) * 20 + 1, i * 20)
local modified_chunk = string.gsub(chunk, pattern, "x")
table.insert(chunks, modified_chunk)
end
return table.concat(chunks)
end