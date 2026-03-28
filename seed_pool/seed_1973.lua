local function manipulate_string(str)
local result = ""
local count = 0
while count < 10 do
str = string.rep(str, 3)
str = string.gsub(str, "pattern", "")
result = result .. str
count = count + 1
end
return result
end