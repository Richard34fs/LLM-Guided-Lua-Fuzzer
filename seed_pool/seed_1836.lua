local function manipulate_string(input_string)
local repeated_string = string.rep(input_string, 10000)
local modified_string = string.gsub(repeated_string, "xyz", "abc")
local final_string = ""
for i = 1, #modified_string do
final_string = final_string .. string.sub(modified_string, i, i)
end
return final_string
end