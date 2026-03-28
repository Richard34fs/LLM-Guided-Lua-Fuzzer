local function generate_code(str)
local pattern = string.rep("%", #str)
local modified_str = string.gsub(str, pattern, "")
local code = ""
for i = 1, #modified_str do
code = code .. "print(\"" .. string.sub(modified_str, i, i) .. "\")\n"
end
return code
end