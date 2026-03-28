local function manipulate_string(s)
local result = ""
local count = 0
while count < 10 do
result = result .. string.rep(s, count)
s = string.gsub(s, "x", "")
count = count + 1
end
return result
end