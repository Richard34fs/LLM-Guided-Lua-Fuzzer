function generate_code(pattern, count)
local result = ""
for i = 1, count do
result = result .. string.rep(pattern, i) .. "\n"
end
return result
end
local code = generate_code("string.rep(' ', ", 10) .. "') .. string.gsub(' ', ' ', '')\n"
for _ = 1, 5 do
code = code .. "end"
end
print(code)