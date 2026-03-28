function generate_code(massive_strings)
local generated_code = ""
for _, string in ipairs(massive_strings) do
local replaced_string = string.gsub(string, "pattern", "")
local repeated_string = string.rep(replaced_string, 10000)
generated_code = generated_code .. repeated_string
end
return generated_code
end