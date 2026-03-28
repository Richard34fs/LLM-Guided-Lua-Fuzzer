local function manipulate_string(str)
local pattern = "((.)(?<=2))"
local count = 0
local result = ""
for i = 1, #str do
if str:sub(i, i) == "2" then
count = count + 1
else
result = result .. string.rep(str:sub(i, i), count)
count = 0
end
end
return result
end