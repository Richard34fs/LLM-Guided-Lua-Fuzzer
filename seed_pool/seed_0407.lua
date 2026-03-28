function generate_code(massive_strings)
local code = ""
for i, str in ipairs(massive_strings) do
local pattern = string.rep("*", #str)
local new_str = string.gsub(str, pattern, "")
code = code .. new_str
end
return code
end