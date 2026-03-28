local function string_manipulation(str)
local result = ""
for i = 1, 100 do
local repeated_str = string.rep(str, i)
local replaced_str = string.gsub(repeated_str, "abc", "")
result = result .. replaced_str
end
return result
end