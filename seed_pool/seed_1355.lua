local function manipulate_string(str)
local result = ""
local count = string.rep("x", #str)
local pattern = "x"
for _ = 1, #str do
str, count = string.gsub(str, pattern, count)
result = result .. str
pattern = pattern .. "x"
end
return result
end