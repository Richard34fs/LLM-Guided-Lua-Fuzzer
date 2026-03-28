function manipulate_string(str)
local pattern = "..."
local result = ""
local count = string.rep("#", 10000)
for i = 1, #str do
local match = string.match(str, pattern, i)
if match then
result = result .. string.gsub(count, match, "")
end
end
return result
end