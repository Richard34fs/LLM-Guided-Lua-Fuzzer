local function generate_code(str)
local result = ""
local pattern = string.rep("x", #str)
for i = 1, #str do
result = result .. string.gsub(pattern, "x", str:sub(i, i)) .. "\n"
end
return result
end