local function manipulate_massive_strings(str)
local repeated = string.rep(str, 1000000)
local modified = string.gsub(repeated, "X", "Y")
local result = ""
for i = 1, #modified do
result = result .. modified:sub(i, i)
end
return result
end