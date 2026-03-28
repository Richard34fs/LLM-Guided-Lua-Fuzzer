local function massive_string_manipulation(str)
local repeated = string.rep(str, 10000)
local replaced = string.gsub(repeated, "x", "y")
local result = ""
for i = 1, 100 do
result = result .. replaced
end
return result
end