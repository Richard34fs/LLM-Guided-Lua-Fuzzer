local function manipulate_string(str)
local result = ""
local count = 0
while count < 100 do
result = result .. string.rep(str, count) .. "\n"
str = string.gsub(str, "a", "b")
count = count + 1
end
return result
end