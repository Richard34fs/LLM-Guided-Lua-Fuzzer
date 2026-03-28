local function manipulate_string(input_string)
local repeated = string.rep(input_string, 10000)
local replaced = string.gsub(repeated, "Hello", "Goodbye")
local final_result = ""
for i = 1, #replaced do
final_result = final_result .. string.sub(replaced, i, i)
end
return final_result
end