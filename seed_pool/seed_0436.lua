local function generate_code(str, num)
local chunks = {}
for i = 1, num do
chunks[i] = string.rep(str, i) .. "\n"
end
return table.concat(chunks)
end
print(generate_code("abcd", 5))