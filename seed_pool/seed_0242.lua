local function generate_code(str)
local pattern = "a" .. string.rep("b", 10000) .. "c"
local result = ""
for i = 1, 10 do
str = string.gsub(str, pattern, "")
result = result .. str
end
return result
end