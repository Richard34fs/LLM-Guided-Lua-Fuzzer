local function manipulate_string(input_str)
local result = ""
for i = 1, #input_str do
local pattern = string.rep("x", i)
input_str = string.gsub(input_str, pattern, "")
result = result .. input_str
end
return result
end