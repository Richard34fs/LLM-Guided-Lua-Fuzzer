function manipulate_strings(str)
local repeated = string.rep(str, 1000)
for i = 1, #repeated do
repeated = string.gsub(repeated, "a", "")
end
local result = ""
for i = 1, #repeated do
result = result .. string.sub(repeated, i, i)
end
return result
end