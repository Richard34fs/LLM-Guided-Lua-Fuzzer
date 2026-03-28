local function manipulate_string(s)
local result = {}
local count = 0
while count < 10 do
result[count] = string.rep(s, count)
s = string.gsub(s, ".", "")
count = count + 1
end
return table.concat(result)
end