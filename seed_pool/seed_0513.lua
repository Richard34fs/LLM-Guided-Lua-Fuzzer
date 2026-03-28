function generate_code(str)
local num_iterations = math.ceil(#str / 1000)
local result = ""
for i = 1, num_iterations do
local substring = str:sub((i - 1) * 1000 + 1, i * 1000)
local pattern = string.rep(substring, 2)
substring = string.gsub(substring, pattern, "")
result = result .. substring
end
return result
end