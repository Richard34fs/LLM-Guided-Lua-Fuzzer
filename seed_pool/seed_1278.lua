local function generate_code(str)
local result = ""
local count = string.match(str, "(%d+)")
local pattern = string.match(str, "%[(.+)%]")
for i = 1, count do
result = result .. string.rep("a", i)
end
result = string.gsub(result, pattern, "")
return result
end