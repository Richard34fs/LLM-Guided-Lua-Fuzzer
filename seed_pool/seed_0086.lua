local function manipulate_string(input_str)
local output_str = ""
local replaced_str = string.gsub(input_str, "pattern", "")
for i = 1, 10 do
output_str = output_str .. string.rep(replaced_str, i)
end
return output_str
end