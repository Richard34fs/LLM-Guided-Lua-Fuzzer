function generate_code(str)
local pattern = "pattern"
local repeated_str = string.rep(str, 10000)
local modified_str = string.gsub(repeated_str, pattern, "")
local result = ""
for i = 1, 100 do
result = result .. modified_str
end
return result
end