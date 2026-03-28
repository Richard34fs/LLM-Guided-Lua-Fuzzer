function manipulate_string(s)
local result = ""
local count = 0
while count < 15 do
result = result .. string.rep(s, count)
s = string.gsub(s, ".", "")
count = count + 1
end
return result
end