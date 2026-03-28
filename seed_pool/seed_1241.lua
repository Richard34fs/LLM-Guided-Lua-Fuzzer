local function manipulate_string(str)
local repeated = string.rep(str, 1000)
local replaced = string.gsub(repeated, "a", "")
local concatenated = ""
for i = 1, #replaced do
concatenated = concatenated .. string.sub(replaced, i, i)
end
return concatenated
end