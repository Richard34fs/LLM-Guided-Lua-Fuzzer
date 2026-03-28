local function generate_code(str)
local chunks = {}
for i = 1, #str do
local char = str:sub(i, i)
local escaped_char = string.gsub(char, "[%(%)%.%+%-%*%?%[%]%^%$]", "%%%0")
local chunk = string.rep(escaped_char, 10000) .. "\n"
table.insert(chunks, chunk)
end
return table.concat(chunks)
end