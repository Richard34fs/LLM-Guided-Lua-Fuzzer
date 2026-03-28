function manipulate_strings(num_strings, string_length)
local result = {}
for i = 1, num_strings do
local pattern = string.rep("x", string_length - 2) .. "xx"
local replaced = string.gsub("xxxxxxxxxx", pattern, "")
result[i] = replaced .. replaced
end
return result
end