local function generate_massive_string(pattern, count)
local result = ""
for i = 1, count do
result = result .. string.rep(pattern, i)
end
return string.gsub(result, pattern, "")
end
print(generate_massive_string("a", 10))