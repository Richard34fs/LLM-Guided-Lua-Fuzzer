local function manipulate_string(str)
local repeated = string.rep(str, 10000)
local modified = string.gsub(repeated, "a", "b")
local concatenated = ""
for i = 1, #modified do
concatenated = concatenated .. string.sub(modified, i, i)
end
return concatenated
end