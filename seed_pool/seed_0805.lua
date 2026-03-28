function manipulate_string(str)
local repeated = string.rep(str, 100)
for i = 1, #repeated do
repeated = string.gsub(repeated, "a", "")
end
local result = ""
for i = 1, #repeated do
result = result .. string.sub(repeated, i, i)
end
return result
end