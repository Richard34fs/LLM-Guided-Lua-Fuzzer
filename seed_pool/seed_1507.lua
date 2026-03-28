function manipulate_string(str)
local num_iterations = 10000
local pattern = "AAA"
local replacement = "BBB"
for i = 1, num_iterations do
str = string.rep(str, 3)
str = string.gsub(str, pattern, replacement)
str = str .. str
end
return str
end