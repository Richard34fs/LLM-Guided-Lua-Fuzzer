local function generate_code(string_length)
local pattern = "a"
local repetitions = string_length / #pattern
local generated_code = ""
for i = 1, repetitions do
generated_code = generated_code .. string.rep(pattern, #pattern) .. "\n"
end
return generated_code
end