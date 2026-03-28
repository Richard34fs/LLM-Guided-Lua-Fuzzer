function generate_code(str)
local parts = {}
for i = 1, 10 do
table.insert(parts, string.rep(str, i))
end
for i = 1, #parts do
parts[i] = string.gsub(parts[i], "a", "b")
end
local result = ""
for _, part in ipairs(parts) do
result = result .. part
end
return result
end