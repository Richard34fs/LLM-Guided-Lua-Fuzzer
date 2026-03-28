local function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local num_copies = math.random(10, 20)
local pattern = string.rep(".", math.random(5, 10))
code = code .. string.rep(str, num_copies) .. "\n"
code = string.gsub(code, pattern, "")
end
return code
end