local function generate_code(str)
local pattern = "abc"
local replaced_str = string.gsub(str, pattern, "")
local repeated_str = string.rep(replaced_str, 1000)
local result = ""
for i = 1, #repeated_str do
result = result .. repeated_str:sub(i, i)
end
return result
end