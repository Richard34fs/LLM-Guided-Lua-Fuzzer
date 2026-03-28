function generate_code(massive_strings)
local generated_code = ""
for _, str in ipairs(massive_strings) do
local num_ repetitions = string.rep("*", #str)
local modified_str = string.gsub(str, ".", "$")
generated_code = generated_code .. "local " .. modified_str .. " = string.rep('" .. str .. "', " .. num_repetitions .. ")\n"
end
return generated_code
end