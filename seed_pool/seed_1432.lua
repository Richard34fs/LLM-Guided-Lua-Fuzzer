function manipulate_string(s)
local pattern = "^(.-)" .. string.rep("%", #s)
local result = ""
for i = 1, #s do
local match = string.match(s, pattern)
s = string.sub(s, #match + 1)
result = result .. match
end
return result
end