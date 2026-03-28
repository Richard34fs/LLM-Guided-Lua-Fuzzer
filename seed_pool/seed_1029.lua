local function manipulate_string(str)
local result = ""
local count = 0
while count < 10 do
result = result .. string.rep(str, count)
str = string.gsub(str, ".", "")
count = count + 1
end
return result
end