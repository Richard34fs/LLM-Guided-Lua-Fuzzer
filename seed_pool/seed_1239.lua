function generate_code(massive_strings)
local generated_code = ""
for _, string in ipairs(massive_strings) do
local pattern = "a" .. string:sub(3, -2) .. "b"
generated_code = generated_code .. string.rep("a", 50) .. string.gsub(string, pattern, "")
end
return generated_code
end