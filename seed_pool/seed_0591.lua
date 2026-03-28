local function manipulate_string(str)
local result = ""
local count = string.match(str, "(%d+)")
if not count then
return str
end
count = tonumber(count)
for i = 1, count do
result = result .. string.rep("x", i) .. "\n"
end
result = string.gsub(result, "%sx%s", "")
return result
end