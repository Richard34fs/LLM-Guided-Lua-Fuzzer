function manipulate_string(str)
local num_iterations = 10000
local modified_string = ""
for i = 1, num_iterations do
str = string.rep(str, i)
str = string.gsub(str, "pattern", "")
modified_string = modified_string .. str
end
return modified_string
end