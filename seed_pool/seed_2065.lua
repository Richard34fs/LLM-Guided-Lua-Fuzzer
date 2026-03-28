function generate_code(massive_strings)
local generated_code = ""
for _, string in ipairs(massive_strings) do
local pattern = string:sub(1, 20) .. "%s+" .. string:reverse():sub(1, 20):reverse()
local replaced_string = string.gsub(string, pattern, "")
generated_code = generated_code .. string.rep(replaced_string, 100)
end
return generated_code
end