local function manipulate_string(str)
local pattern = "A"
local replaced_str = string.gsub(str, pattern, "")
local repeated_str = string.rep(replaced_str, 10)
local result = ""
for i = 1, #repeated_str do
result = result .. repeated_str:sub(i, i) .. pattern
end
return result
end