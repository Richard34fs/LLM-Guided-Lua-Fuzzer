function generate_code(str)
local repeated = string.rep(str, 10000)
local replaced = string.gsub(repeated, "a", "")
local concatenated = ""
for i = 1, 5 do
concatenated = concatenated .. replaced
end
return concatenated
end