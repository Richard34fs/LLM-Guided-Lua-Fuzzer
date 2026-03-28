function manipulate_strings(str)
local count = 10000
local result = ""
str = string.gsub(str, "x", "y")
for i = 1, count do
result = result .. str
end
return result
end