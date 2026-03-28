function generate_code(massive_strings)
local code = ""
for i, s in ipairs(massive_strings) do
local pattern = string.rep("(", i) .. ".*" .. string.rep(")", i)
s = string.gsub(s, pattern, "")
code = code .. s
end
return code
end