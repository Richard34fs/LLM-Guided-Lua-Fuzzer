local function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local count = string.rep("a", #str)
local replaced = string.gsub(count, "a", "")
code = code .. replaced
end
return code
end