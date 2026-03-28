function manipulate_string(str)
local repeated = string.rep(str, 10000)
local modified = string.gsub(repeated, "a", "b")
local result = ""
for i = 1, #modified do
result = result .. string.sub(modified, i, i)
end
return result
end