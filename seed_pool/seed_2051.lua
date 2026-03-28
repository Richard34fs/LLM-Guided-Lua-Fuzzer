local function massive_string_manipulation(str)
local repeated = string.rep(str, 1000)
local replaced = string.gsub(repeated, "a", "")
local concatenated = ""
for i = 1, 100 do
concatenated = concatenated .. replaced
end
return concatenated
end