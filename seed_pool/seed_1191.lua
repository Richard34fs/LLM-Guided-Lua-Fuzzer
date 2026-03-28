function generate_code(str)
local num = string.match(str, "%d+") or 0
local pattern = string.rep(".", num)
if pattern ~= "" then
str = string.gsub(str, pattern, "")
end
return str
end