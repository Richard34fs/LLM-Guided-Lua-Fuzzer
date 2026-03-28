local function generate_code(str, num)
local result = ""
for i = 1, num do
result = result .. string.rep(str, i) .. "\n"
end
return result
end
print(generate_code("hello", 3))