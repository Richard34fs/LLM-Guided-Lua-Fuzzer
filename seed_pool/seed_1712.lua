local function generate_code(massive_strings)
local generated_code = {}
for _, str in ipairs(massive_strings) do
local num_times = #str
local replaced_str = string.gsub(str, "a", "b")
local repeated_str = string.rep(replaced_str, num_times)
table.insert(generated_code, repeated_str)
end
return generated_code
end