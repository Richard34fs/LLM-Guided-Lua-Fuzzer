local function generate_code(pattern, count)
local result = ""
for i = 1, count do
result = result .. string.rep(pattern, i)
end
return result
end
local pattern = "abc"
local count = 10
local generated_code = generate_code(pattern, count)
print(generated_code)