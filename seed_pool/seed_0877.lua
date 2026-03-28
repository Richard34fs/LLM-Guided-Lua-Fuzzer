local function manipulate_string(s)
local result = ""
local count = string.match(s, "%d+") or 0
local pattern = string.rep(".", count)
for i = 1, count do
result = result .. string.gsub(s, pattern, "")
end
return result
end