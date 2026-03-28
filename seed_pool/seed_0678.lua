local function manipulate_string(str)
local result = ""
local count = string.rep("x", #str)
for i = 1, #str do
count = string.gsub(count, ".", "x")
result = result .. string.rep(str:sub(i, i), count)
end
return result
end