function manipulate_string(str)
local repeated = string.rep(str, 1000)
local modified = string.gsub(repeated, "foo", "bar")
local result = ""
for i = 1, #modified do
result = result .. string.sub(modified, i, i)
end
return result
end