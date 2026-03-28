local function generate_code(str)
local rep = string.rep
local gsub = string.gsub
local chunks = {}
local chunk_size = math.ceil(#str / 10)
for i = 1, #str, chunk_size do
local chunk = str:sub(i, i + chunk_size - 1)
table.insert(chunks, chunk)
end
local code = "local result = ''\n"
for _, chunk in ipairs(chunks) do
code = code .. "result = result .. rep('" .. gsub(chunk, "'", "\\'") .. "', 10)\n"
end
return code
end