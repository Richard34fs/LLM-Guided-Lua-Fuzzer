local function generate_code(str)
local pattern = "([%S]+)"
local count = string.rep("%1", #str)
local result = ""
for i = 1, #str do
result = result .. string.gsub(count, pattern, str:sub(i, i))
end
return result
end