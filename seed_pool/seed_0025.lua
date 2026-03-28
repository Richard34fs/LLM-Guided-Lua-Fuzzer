function manipulate_string(str)
local pattern = "a"
local count = select(2, string.gsub(str, pattern, ""))
local repeated = string.rep(str, count)
local replaced = string.gsub(repeated, pattern, "")
local concatenated = ""
for i = 1, count do
concatenated = concatenated .. replaced
end
return concatenated
end