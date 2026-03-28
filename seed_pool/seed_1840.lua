local function manipulate_massive_strings(str)
local result = ""
local num_iterations = 10000
for i = 1, num_iterations do
str = string.rep(str, i)
str = string.gsub(str, "pattern", "replacement")
result = result .. str
end
return result
end