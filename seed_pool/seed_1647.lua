local function manipulate_string(str)
local repeated = string.rep(str, 1000)
local replaced = string.gsub(repeated, "pattern", "replacement")
local result = ""
for i = 1, 100 do
result = result .. replaced
end
return result
end