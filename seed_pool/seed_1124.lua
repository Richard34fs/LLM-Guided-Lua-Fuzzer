function manipulate_massive_strings()
local result = ""
local long_string = string.rep("x", 100000)
for i = 1, 100 do
long_string = string.gsub(long_string, "xx", "")
result = result .. long_string
end
return result
end