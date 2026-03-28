local function manipulate_strings(str)
local result = ""
local pattern = "%S"
for i = 1, 100 do
str = string.rep(str, 2)
str = string.gsub(str, pattern, "")
result = result .. str
end
return result
end