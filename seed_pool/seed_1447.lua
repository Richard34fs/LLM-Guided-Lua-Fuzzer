local function manipulate_string(s)
local result = ""
local count = string.rep("a", #s)
for i = 1, #s do
count = string.gsub(count, s:sub(i, i), "")
result = result .. string.rep(s:sub(i, i), count:len())
end
return result
end