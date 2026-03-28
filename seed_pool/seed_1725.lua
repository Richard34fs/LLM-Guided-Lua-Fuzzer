function manipulate_string(str)
local count = 0
for i = 1, #str do
if str:sub(i, i) == "a" then
count = count + 1
end
end
local repeated = string.rep("b", count)
local replaced = string.gsub(str, "c", "d")
local concatenated = str .. repeated .. replaced
return concatenated
end