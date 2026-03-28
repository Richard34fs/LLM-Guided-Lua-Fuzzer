local function generate_code(massive_strings)
local code = ""
for i, str in ipairs(massive_strings) do
local pattern = string.rep("^", i) .. ".*" .. string.rep("$", i)
local replaced = string.gsub(str, pattern, "")
code = code .. string.format("local str_%d = %q\n", i, replaced)
end
return code
end