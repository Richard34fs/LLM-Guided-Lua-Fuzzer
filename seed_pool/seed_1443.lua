local function manipulate_string(str)
local result = ""
local count = string.rep("a", #str)
local pattern = string.rep("[%z\1-\9\11-\255]", #str)
for i = 1, #str do
result = result .. string.gsub(count, pattern, str:sub(i, i))
end
return result
end