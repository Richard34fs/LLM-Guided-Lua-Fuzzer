local function manipulate_string(input_string)
local pattern = "x"
local modified_string = input_string
for i = 1, 10 do
modified_string = string.rep(modified_string, i) .. string.gsub(modified_string, pattern, "")
end
return modified_string
end